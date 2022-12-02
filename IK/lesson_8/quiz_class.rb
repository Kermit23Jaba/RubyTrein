class FileWriter
    def initialize(filename, mode)
        @filename = "QUIZ_#{name}_#{Time.now.strftime('%d-%m-%Y_%H-%M')}.txt"
        @mode = mode
    end

    def write(content)
        @filename,
        content,
        mode: @mode
    end
end

class Question
    def initialize(filename)
        @filename = filename
    end

    def load
        YAML.safe_load_file(@filename, symbolize_names: true)
    end
end

a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0

puts "ваше имя?"
name = gets.strip

writer = FileWriter.new('a')
writer.write("Результаты для пользователя #{name}\n\n#{current_time}")

question = Question.new(questions.yml)

questions.load.shuffle.each do |question_data|
    formatted_question = "\n\n=== #{question_data[:question]} ===\n\n"
    puts formatted_question

    writer.write(formatted_question)

    correct_answer = question_data[:answers].first

    answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|

        answer_char = (a_code + i).chr
        result[answer_char] = answer

        puts "#{answer_char}. #{answer}"

        result
    end

    user_answer_char = nil

    loop do
        puts "Ваш ответ (A, B, C, D):"
        user_answer_char = gets.strip[0]
        if user_answer_char.between?("A", "D")
            break
        else
            puts "Ответ A - D"
        end
    end

    writer.write("Ответ пользователя: #{answers[user_answer_char]}\n\n")

    if answers[user_answer_char] == correct_answer
        puts "Верно!"
        correct_answers = correct_answers + 1
        writer.write("Верно!")

    else
        puts "Не верно. Ответ #{correct_answer}"
        incorrect_answers = incorrect_answers + 1
        writer.write("Не верно, ответ #{correct_answer}\n\n")
    end
end

writer.write("\n\n\Правильных ответов :#{correct_answers}\n\n")
writer.write("Неправильных ответов :#{incorrect_answers}\n\n")
writer.write("Процент правильных ответов :#{((correct_answers / all_questions.size.to_f) * 100).round(2)}")
