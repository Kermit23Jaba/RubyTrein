# class  Sample
#     def my_method(arg1, arg2, arg3 = :test)
#         puts arg1, arg2, arg3
#     end

#     def new_way(arg1:, arg2:, arg3: :test)
#         puts arg1, arg2, arg3
#     end
# end

# s = Sample.new

# s.my_method(1, 2)
# s.new_way(arg2: "4", arg1: "tree")




# class  Sample
#     def poetry(num, h1, h2)
#         puts num
#         puts h1.inspect
#         puts h2.inspect
#     end
# end

# s = Sample.new
# s.poetry(42, {arg2: "4"}, arg1: "tree")

# link_to('My link', 'http://example.com', target: "_blank", class: 'my_link')


# class Cat
#     def  initialize(age)
#         @age = to_cat_years(age)
#     end

#     def to_cat_years(human_age)
#         human_age / 4
#     end
# end

# p cat = Cat.new(60)
# p cat.to_cat_years(100)



# class Cat
#     attr_reader :age

#     def  initialize(age)
#         @age = to_cat_years(age)
#     end

#     private
#     def to_cat_years(human_age) #служебный метод
#         human_age / 4
#     end
# end

# p cat = Cat.new(60)
# # p cat.to_cat_years(100)

# p cat.age


# class Cat
#     attr_reader :age
#     #метод образца(экземпляра) класса (instance method)
#     def  initialize(age)
#         @age = to_cat_years(age)
#     end
#     # метод класса. Для общих вещей.
#     # def Cat.speak
#     #     puts "may"
#     # end

#     def self.speak # self (Cat) указывает на текущий объект (где выполняется программа)
#         puts "may"
#     end


#     private
#     def to_cat_years(human_age) #служебный метод
#         human_age / 4
#     end
# end

# p cat = Cat.new(60)
# # p cat.to_cat_years(100)

# Cat.speak






class Cat
    attr_reader :age

    def  initialize(age)
        @age = to_cat_years(age)
    end

    def self.speak
        puts "may"
    end

    def birthday
        puts self.age
    end

    private
    def to_cat_years(human_age)
        human_age / 4
    end
end

p animal = Cat.new(60)
animal.birthday