require 'yaml'
a_code = 'A'.ord
re_yes = 0
current_time = Time.now.strftime("%H-%M")

puts "You name"
name = gets.strip

filename = "QUIZE_#{name}_#{current_time}.txt"

File.write(
    filename,
    "Результаты для пользователя #{name}", 
    mode: 'a'
)

all_questions = YAML.safe_load_file('questions.yml', symbolize_names: true)

all_questions.shuffle.each do |question_data|
    puts "\n\n===#{question_data[:question]}?===\n\n"

        correct_answer = question_data[:answer].first

        answers = question_data[:answer].shuffle.each_with_index.inject({}) do |result, (item, i)|

        asnwer_code = (a_code + i).chr
        result[asnwer_code] = item
        puts "#{asnwer_code}: #{item}"

        result
    end

    user_char = nil

    loop do
        puts "You answer?"
        user_char = gets.strip[0].upcase
        if user_char.between?('A', 'D')
            break
        else
            puts "Onli A, B, C, D"
        end
    end
    
    
    if answers[user_char] == correct_answer
        puts "Yes"
        re_yes += 1
    else
        puts "No #{correct_answer}"
    end
end
