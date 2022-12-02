class Animal
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def speak
        puts "easy"
    end
end

class Dog < Animal
    def speak #переопределим метод Animal
        puts "woof"
    end
end

class Cat < Animal
    def speak
        puts "meow"
    end
end

dog = Dog.new("Shos", 102)
dog.speak
puts dog.name
# animal = Animal.new.speak