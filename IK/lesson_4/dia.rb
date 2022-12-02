# arr = [1, 2, 4, 5, 6]

# arr.size.times do |i|
#     puts i
# end

# ==================================
countries = %w[
    Китай
    Франция
    Норвегии
    Великобритания
]

capitals = %w[
    Пекин
    Париж
    Лондон
    Осло
]

countries.each_with_index do |country, index|
    puts "Страна #{country}"
    user_input = gets.strip.downcase

    if user_input == capitals[index].downcase
        puts "OK"
    else
        puts "Not OK. It's #{capitals[index]}"
    end
end
# ===================================
data = {
    Китай: "Пекин",
    Франция: "Париж",
    Норвегии: "Осло",
    Великобритания: "Лондон"
}

data.each do |country, capitals|
    puts "#{country}"

    user_input = gets.strip.downcase
    if user_input == capitals.downcase
        puts "OK"
    else
        puts "Not OK, it's #{capitals}"
    end
end



# arr = {
#     Anton: "2",
#     Misha: "3",
#     Kate: "4"
# }

# # arr.each do |name, age|
# #     puts "#{name}"
# #     choise_age = gets.to_i
# #     if choise_age == age
# #         puts "Yes"
# #     else
# #         puts "No"
# #     end
# # end


# h = gets.chomp
# p h.object_id
# p arr[:Anton].object_id

# p h == arr[:Anton]

