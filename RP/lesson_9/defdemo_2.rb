# def get_password
#   print "Type password: "
#   return gets.chomp
# end

# xx = get_password

# puts "Был введен пароль #{xx}"

# def greating name
#   puts name
# end

# greating "Anton"

# def greating (name)
#   puts name
# end

# greating("Anton")

# result =
#   if a == 1
#     x
#   else
#     y
#   end



#  def get_command
#   :left
#  end

#  command = get_command

#  if command == :left
#   puts "Иду на лево"
#  end

arr = {left: "лево", rigth: "право", up: "вверх", down: "вниз"}

arr.sort_by{rand()}.each do |_, value|
  puts "Робот идет #{value}"
end

array = [[:left, "лево"], [:rigth, "право"], [:up, "вверх"], [:down, "вниз"]]

array.shuffle.to_h.each do |_, value|
  puts "Робот идет #{value}"
end
