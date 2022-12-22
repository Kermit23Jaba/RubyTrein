def add_person(options)
  age = options[:age]
  name = options[:name]

  puts "#{name} #{age}"
end

op = {
  :name => 'Mie',
  :age => 23  
}

add_person(op)