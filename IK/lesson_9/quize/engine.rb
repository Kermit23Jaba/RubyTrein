require_relative 'question_data'
require_relative 'file_writer'
require_relative 'statistics'
require_relative 'input_reader'


class Engine
    def initialize
        @question_data = QuestionData.new
        @input_reader = InputReader.new
        

        name = @input_reader.read(welcome_msg: "You name:",
                                validator: ->(val) { !val.empty? }, 
                                error_msg: "Имя не может быт пустым")

        

        current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S')
        @writer = FileWriter.new('a', name, current_time)

        @writer.write("Result for user #{name}\n\n#{current_time}")

        @statistics = Statistics.new(@writer)
    end

    def run
        @question_data.collection.each do |next_question|
            puts next_question

            @writer.write(next_question)

            next_question.display_answers

            user_answer = next_question.find_answer_by(ask_for_answer_char)

            @writer.write("Answers user: #{user_answer}\n\n")

            check(user_answer, next_question.correct_answer)
        end

        @statistics.print_report
    end

    private

    def check(user_answer, correct_answer)
        if user_answer == correct_answer
            puts "Good"
            @statistics.correct
            @writer.write("Good!")
        else
            puts "No"
            puts "Right: #{correct_answer}"
            @statistics.incorrect
            @writer.write("No! #{correct_answer}")
        end

    end

    def ask_for_answer_char
        @input_reader.read( welcome_msg: "Ваш ответ",
                            validator: ->(val) { !val.between?("A", "D") }, 
                            error_msg: "Ответ A - D",
                            process: ->(val) { val[0].to_s })
    end
end