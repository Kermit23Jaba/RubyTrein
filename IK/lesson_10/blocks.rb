# def demo(args1, args2)
#     # puts args1, args2

#     if block_given? #проверка если блок был передан то выполняем yield
#         yield(args1)
#         yield(args2)
#     end
# end

# # demo(10, 20) do
# #     puts "Yes"
# # end


# demo(10, 20) do |i|
#     puts i
# end



# def demo(*args)
#     if block_given?
#         yield(args)
#     end
# end

# demo(10, 20) do |i|
#     puts i
# end

#  для массивов
# def demo(*args)
#     if block_given?
#         args.each do |next_arg|
#         yield next_arg
#         end
#     end
# end

# demo(10, 20) do |i|
#     puts i
# end


# def demo(*args)
#     sum = 0

#     args.each do |next_arg|
#         result = yield(next_arg)
#         sum += next_arg if result
#     end

#     puts sum
# end

# demo(101, 23, 45, 8, 10) do |i|
#     i.odd?
# end

# demo(123, 43, 54, 3, 4) do |i|
#     i.even?
# end


# def method1(args, &block)
#     puts args
#     block.call
# end

# def method2(&block)
  #block.call
  #block.call
# end

# method1(100) do 
#     puts "Yes"
# end

