# # def total_weight(options={})
# #   a = options[:soccer_ball_count] || 0
# #   b = options[:tennis_ball_count] || 0
# #   c = options[:golf_ball_count] || 0
# #   (a * 410) + (b * 58) + (c * 45) + 29
# # end
  
# # x = total_weight(soccer_ball_count: 3, tennis_ball_count: 2, golf_ball_count: 1)
# # p x
# # p total_weight(tennis_ball_count: 2, golf_ball_count: 1)
  
  
# # def demo(ot={})
# #   a = ot[:a] || 0
# #   b = ot[:b] || 0
# #   a **2 + b
# # end
  
# # p demo(b: 5)

# # есть специальная структура данных, которая содержит только ключи
# # (без значений). Она называется HashSet (в руби просто Set):
# # (англ.) Set implements a collection of unordered values with no duplicates.
# # (по-русски) Set представляет (реализует) собой коллекцию неупоря-
# # доченных неповторяющихся значений (то есть без дубликатов).

# require 'set'

# def f(str)
#   p set = Set.new #Set: {}
#   str.each_char do |c|
#     p set.add(c) if c>= 'a' && c <= 'z' #Set: {"q", "u"}
#   end
#   set.size == 26
# end
# a = 'quick brown fox jumps over the lazy dog'
# p f(a)

# require 'set'
# a = 'quick brown fox jumps over the lazy dog'

# def demo(w)
#   set = Set.new
#   w.each_char do |i|
#     set.add(i) if ('a'..'z').include?(i)
#   end
#   set.size == 26
# end

# p demo(a)

# #_ если кокое то значение не нужно (key, value)
# hh = {
#   soccer_ball: 410,
#   tennis_ball: 58,
#   golf_ball: 45
#   }
# hh.each do |k, _|
# puts "На складе есть #{k}"
# end


# data = {
#   soccer_ball: { name: "Футбольный мяч", weight: 410, qty: 5 },
#   tennis_ball: { name: "Мяч для тениса", weight: 58, qty: 10 },
#   golf_ball: { name: "Мяч для гольфа", weight: 45, qty: 5 }
# }

# puts "На складе есть:"
# data.each do |_, v|
#   puts "#{v[:name]}, вес #{v[:weight]}, колличество: #{v[:qty]} шт."
# end


# users = [
#   {
#   first: 'John',
#   last: 'Smith',
#   address: { city: 'San Francisco',
#             country: 'US',
#             street: {
#               line1: '555 Market Street',
#               line2: 'apt 123'
#             }
#     }
#   },
#   { first: 'Pat', last: 'Roberts', address: { country: 'US' } },
#   { first: 'Sam', last: 'Schwartzman' }
# ]

# users.each do |user|
#   puts user.dig(:address, :street, :line1) #будет выдавать где есть все key
# end




@obj = {}
#@obj = []

def demo
  f = gets.strip
  e = gets.strip.to_s
  ph = gets.strip.to_i

  @obj[f] = {email: e, phone: ph}
  # @obj << {first: f, address: {email: e, phone: ph}}
end

demo
demo
p @obj
# @obj.each do |i|
#   p i[:first]
# end