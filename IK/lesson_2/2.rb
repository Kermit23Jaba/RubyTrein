puts "Your age?"
age = gets.to_i
puts "Your country?"
country = gets.strip

country_all_21 = %w[Japan, USA, Russia]

if country_all_21.include?(country) && age >= 21
    puts "open for #{country}"
elsif age >= 18
    puts "open your #{country}"
else
    puts "close"
end
