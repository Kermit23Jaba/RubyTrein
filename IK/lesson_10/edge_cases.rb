# p = proc { |args| puts "proc" }
# p.call("test", 1) #proc

# # l = lambda { |args| puts "lambda"}
# l = ->(args) { puts "lambda" }
# l.call("test2", 2) #wrong number of arguments (given 2, expected 1)

# #lambda более чувствительна к колличеству передаваемых аргументов в отличии от процедуры





def demo(obj)
  puts "1"
  obj.call #внутри вызова произошел return и выходит из метода
  puts "3"
end


p = proc do
  puts "I am"
  return 42
end

l = lambda do
  puts "Am I"
  return 24
end


# demo(p)
demo(l)

#lambda и proc это образцы одного класса Proc
#Привыкнуть лучше что то одно и поюзать чтобы прывыкнуть