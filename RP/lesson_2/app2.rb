puts "За сколько секунд пробежишь 100 м?"
t_100 = gets.to_i
puts "Сколько километров пробежишь?"
s_km = gets.to_i

puts "#{s_s = ((s_km * 1000) / (100 / t_100)) / 60 } мин"