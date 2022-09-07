require 'yaml'

a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0
puts "Введите ваше имя"

name = gets.strip
@name = name

current_time = Time.now.strftime('от %d.%m.%Yг. %Hч%Mм')
@current_time = current_time

def write_in_text(something)
    File.write("QUIZ_#{@name}_#{@current_time}.txt", 
    something,
    mode: 'a'
    )
end  

who = "Результаты для пользователя #{name}\n#{current_time}\n\n"

write_in_text(who)

all_questions = YAML.safe_load_file('questions.yml', symbolize_names: true)

all_questions.shuffle.each do |question_data|
    formatted_question = "\n===#{question_data[:question]}===\n"
    puts formatted_question
    write_in_text(formatted_question)

    correct_answer = question_data[:answers].first
    
    answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
        answer_char = (a_code + i).chr
        result[answer_char] = answer
        puts "#{answer_char}. #{answer}"
        result
    end

    user_answer_char = nil

    loop do
        puts "Ваш ответ"
        user_answer_char = gets.strip[0]
        if user_answer_char.between?('A', 'D')
            break
        else
            puts "Ответ только A, B, C, D"
        end
    end

    answer_user = "Ответ пользователя: #{answers[user_answer_char]}\n"
    write_in_text(answer_user)

    if answers[user_answer_char] == correct_answer
        puts good = "Верно\n\n"
        write_in_text(good)
        correct_answers += 1
    else
        puts not_good = "Не верно. Ответ #{correct_answer}\n\n"
        write_in_text(not_good)
        incorrect_answers += 1
    end

end
c_a = "Колличество правильных: #{correct_answers}\n"
write_in_text(c_a)

inc_a = "Колличество не правильных: #{incorrect_answers}\n"
write_in_text(inc_a)

correct_answer_percentage = "Процент правильых ответов: #{((correct_answers / all_questions.size.to_f) * 100).round(2)}\n"
write_in_text(correct_answer_percentage)
