require 'yaml'
a_code = 'A'.ord #= 65
correct_answers = 0
incorrect_answers = 0

# ввести  имя с клавиатуры
puts "ваше имя?"
name = gets.strip
#Дата теста
current_time = Time.now.strftime('%d-%m-%Y_%H-%M')

file_name = "QUIZ_#{name}_#{current_time}.txt" #создаем файл с txt


File.write(
    file_name, 
    "Результаты для пользователя #{name}\n\n#{current_time}",
    mode: 'a' #открыть файл и дописать в конец файла
)




# откуда то взять вопросы и ответы
# YAML = yet another marker language (еще один язык)
# all_questions = YAML.safe_load_file 'questions.yml' #только читаем файл (так в иде строк)=> {"key1"=>"Value 1", "key2"=>"Value 2"}
all_questions = YAML.safe_load_file('questions.yml', symbolize_names: true) #так можно превратить в символы=> {:key1=>"Value 1", :key2=>"Value 2"}

# брать каждый вопрос по очереди и предлагать 4 варианта ответа

all_questions.shuffle.each do |question_data|
    # На каждой итерации выводиться случайный вопрос (текст) и все 4 варианта ответа
    formatted_question = "\n\n=== #{question_data[:question]} ===\n\n" #\n\n - чтобы была сразу новая строка
    puts formatted_question

    File.write(
        file_name, 
        formatted_question,
        mode: 'a' #открыть файл и дописать в конец файла
)
    correct_answer = question_data[:answers].first #правильный ответ запоминаем по дефолту у нас это первый


    # тот хэш который мы конструируем=> result
    # очередной элемент массива (очередной ответ из массива) => answer
    # индекс этого ответа => i
    answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
        # На каждой итерации выводим по 1 ответу
        #result это пустой хэш
        answer_char = (a_code + i).chr #получаем букву для ответа
        result[answer_char] = answer # result = {"A" => "Эквадор"}

        puts "#{answer_char}. #{answer}"

        result # теперь используй новое значение для result 
    end
# На момент завершения цикла answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
# у нас выведены на экран все 4 ответа (в произвольном порядке) + сам вопрос

    # юзер вводит ответ с клавиатуры
    user_answer_char = nil #чтобы был доступ к user_answer_char везде

    loop do
        puts "Ваш ответ (A, B, C, D):"
        user_answer_char = gets.strip[0]
        if user_answer_char.between?("A", "D")
            break
        else
            puts "Ответ A - D"
        end
    end # на этом моенте переменные внутри строки loop НЕ ДОСТУПНЫ

    File.write(
        file_name, 
        "Ответ пользователя: #{answers[user_answer_char]}\n\n", 
        mode: 'a' #открыть файл и дописать в конец файла
    )


    # мы сравниваем  ответ с правильным
    if answers[user_answer_char] == correct_answer
        puts "Верно!"
        correct_answers = correct_answers + 1

        File.write(
            file_name, 
            "Верно!", 
            mode: 'a' #открыть файл и дописать в конец файла
        )

    else
        puts "Не верно. Ответ #{correct_answer}"
        incorrect_answers = incorrect_answers + 1

        File.write(
            file_name, 
            "Не верно, ответ #{correct_answer}\n\n", 
            mode: 'a' #открыть файл и дописать в конец файла
        )

    end
end

File.write(
    file_name, 
    "\n\n\Правильных ответов :#{correct_answers}\n\n", 
    mode: 'a' #открыть файл и дописать в конец файла
)

File.write(
    file_name, 
    "Неправильных ответов :#{incorrect_answers}\n\n", 
    mode: 'a' #открыть файл и дописать в конец файла
)


correct_answer_percentage = (correct_answers / all_questions.size.to_f) * 100

File.write(
    file_name, 
    "Процент правильных ответов :#{correct_answer_percentage.round(2)}", 
    mode: 'a' #открыть файл и дописать в конец файла
)
