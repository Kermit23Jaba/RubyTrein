# puts "Enter A:"
# a = gets.to_i
# puts "Enter B:"
# b = gets.to_i
# puts "+, -, *, /"
# s = gets.strip.chomp

# if s == "+"
#     s = :+
# end


# results = a s b
# puts results










# operator = ['+', '-', '*', '/']
# operator.map {|o| 2.method(o).(2) }

puts "Enter A:"
a = gets.to_f

puts "Enter B:"
b = gets.to_f

puts "Enter operator +, -, *, /"
operator = gets.strip

until ["+", "-", "*", "/"].include?(operator)
    puts "Enter operator +, -, *, /"
    operator = gets.strip
end

if operator == "/" && b == 0
    puts "Zero NOT!"
    exit
else
    c = a.send(operator, b)
    puts "Answer: #{c.round(2)}"
end

