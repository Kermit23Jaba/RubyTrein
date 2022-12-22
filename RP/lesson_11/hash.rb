hh = {}
loop do
  puts "Name and namber"
  name = gets.strip
  num = gets.to_i

  break if name == '' || num == ''
  
  hh[name] = num
end

puts hh