# answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
#     # На каждой итерации выводим по 1 ответу
#       #result это пустой хэш {}
#       answer_char = (a_code + i).chr #получаем букву для ответа
#       result[answer_char] = answer # result = {"A" => "Эквадор"}

#       puts "#{answer_char}. #{answer}"

#       result # теперь используй новое значение для result 
#   end


# arr = [1, 2, 3, 4]

# arr2 = arr.shuffle.each_with_index.inject({}) do |result, (item, i)|
#   result[i] = item
#   i += 1
#   result
# end
# puts arr2
# ============
# {0=>4, 1=>1, 2=>3, 3=>2}


# arr = ["a", "b", "c", "d"]

# arr.shuffle.each_with_index.inject({}) do |result, (answer, i)|
#   result[i] = answer
#   puts "#{i}. #{answer}"
#   puts result
#   result
# end

# 0. b
# {0=>"b"}
# 1. d
# {0=>"b", 1=>"d"}
# 2. c
# {0=>"b", 1=>"d", 2=>"c"}
# 3. a
# {0=>"b", 1=>"d", 2=>"c", 3=>"a"}


# words = %w[ alpha beta gamma delta epsilon eta theta ]
# longest_word = words.inject do |best,w|
#  w.length > best.length ? w : best
# end
# p longest_word
# # Возвращается значение "epsilon".


# Вы можете думать о первом аргументе блока как о накопителе: результат каждого запуска блока сохраняется в накопителе, а затем передается следующему выполнению блока. В случае кода, показанного выше, вы по умолчанию устанавливаете аккумулятор, результат, равным 0. Каждый запуск блока добавляет заданное число к текущему итогу, а затем сохраняет результат обратно в аккумулятор. Следующий вызов блока имеет это новое значение, добавляет к нему, снова сохраняет и повторяет.

# В конце процесса inject возвращает аккумулятор, который в данном случае представляет собой сумму всех значений в массиве или 10.

# Вот еще один простой пример создания хэша из массива объектов с ключом их строкового представления:
# [1,"a",Object.new,:hi].inject({}) do |hash, item|
# hash[item.to_s] = item
# hash
# end

# В этом случае мы устанавливаем наш аккумулятор по умолчанию на пустой хэш, а затем заполняем его каждый раз при выполнении блока. Обратите внимание, что мы должны вернуть хеш в качестве последней строки блока, потому что результат блока будет сохранен в аккумуляторе.



# arr = %w[a b c d].inject({}) do |result, item|
#   result[item.to_sym] = item
#   puts result
#   result
# end

# {:a=>"a"}
# {:a=>"a", :b=>"b"}
# {:a=>"a", :b=>"b", :c=>"c"}
# {:a=>"a", :b=>"b", :c=>"c", :d=>"d"}


# hash = Hash.new{|h,k| h[k] = k}
# hash = Hash[1, 2, 3, 4, 5, 6]
# puts hash
# {1=>2, 3=>4, 5=>6}


# i = 0
# arr = [1, 2, 3, 4].shuffle.each_with_index.inject({})do |result, (item, i)|
#   i += 1
#   result[i] = item
#   result
# end
# puts arr
# ========================
# {1=>4, 2=>3, 3=>1, 4=>2}


# sum = 0
# nums = (1...5)
# sum = nums.inject{ |x, y| x + y }
# puts sum 
# ----------
# #10


# nums = (1...5)
# sum = nums.inject(3) { |x, y| x + y }
# puts sum 
# ----
# #13


# nums = (1...5)
# sum = 0
# nums.each { |n| sum += n }
# puts sum
# -----
# 10


# one = %w[one two33f fre]
# long_word = one.inject do |x, y|  
#   y.size > x.size ? y : x
# end

# puts long_word
# ------------
# two33f


# one = %w[one two33f fre]
# one_long = []
# one.each { |x| one_long = x if x.size > one_long.size }
# puts one_long
# ----------
# two33f


# one_long = one.inject{ |x, y| y.size > x.size ? y : x}
# puts one_long
# ----
# two33f


# # Sum, without initial_operand.
# (1..4).inject(:+)     # => 10
# # Sum, with initial_operand.
# (1..4).inject(10, :+) # => 20

# # Sum of squares, without initial_operand.
# (1..4).inject {|sum, n| sum + n*n }    # => 30
# # Sum of squares, with initial_operand.
# (1..4).inject(2) {|sum, n| sum + n*n } # => 32
# https://russianblogs.com/article/5175620722/

# each - он возвращает сам массив
# map - создает новый массив

# arr = [1, 2, 3]

# arr.map{|x| x + 2}
# p arr #=> [1, 2, 3]

# arr.each{|x| x + 2}
# p arr #=>[1, 2, 3]

# arr = [1, 2, 3]

# a = arr.map{|x| x + 2}
# p a #=> [3, 4, 5]

# b = arr.each{|x| x + 2}
# p b #=>[1, 2, 3]
