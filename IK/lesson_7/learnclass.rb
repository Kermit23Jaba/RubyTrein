class Animal
    attr_accessor :name, :age #чтение и записи
    attr_reader :name #чтение
    attr_writer :name #запись

    def initialize(name, age)
        @name = name
        @age = age
    end
    #attr_accessor заменяет нам нижние методы age, age=:

    # def age
    #     return @age
    # end

    # def age=(new_age)
    #     @age = new_age
    # end

end

animal1 = Animal.new("Kotopes", 3) #создаем тут новое животное

puts animal1.inspect
puts animal1.age = 10
puts animal1.inspect
puts animal1.age
