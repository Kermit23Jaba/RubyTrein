puts "Введите свой возраст (целове число)"
age = gets.to_i

puts "Выберите свою страну. 1 - если вы из США или Япония, иначе введите 2"
country_num = gets.to_i

if (age >= 21) || (age >= 18 && country_num != 1)
    puts "Welcome"
else
    puts "close"
end
