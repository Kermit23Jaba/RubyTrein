# arr = [1, 2, 4, 5, 6]

# arr.size.times do |i|
#     puts i
# end

# ==================================
# countries = %w[
#     Китай
#     Франция
#     Норвегии
#     Великобритания
# ]

# capitals = %w[
#     Пекин
#     Париж
#     Лондон
#     Осло
# ]

# countries.each_with_index do |country, index|
#     puts "Страна #{country}"
#     user_input = gets.strip.downcase

#     if user_input == capitals[index].downcase
#         puts "OK"
#     else
#         puts "Not OK. It's #{capitals[index]}"
#     end
# end
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