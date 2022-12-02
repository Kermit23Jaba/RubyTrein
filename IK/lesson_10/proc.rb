# p = Proc.new {
#   puts "Hell"
# }

# p2 = proc { puts "23" }
# p.call
# p2.call


p1 = Proc.new do |a, b|
  res = a + b
  puts "sum #{res}"
  res
end

# p11 = p1.call(122, 3434)
# puts p11

p2 = proc { |item| puts "23 #{item}" }

def caller(my_proc, my_proc2)
  my_proc.call(10, 20)
  my_proc2.call("Okey")
  yield
end

caller(p1, p2) do 
  puts "the end"
end


# p2 = proc { |item| puts "23 #{item}" }
# p2.call(100)


