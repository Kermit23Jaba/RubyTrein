# b = 2
# все числа которые делятся без остатка

# beter
# def divisors(n)
#   vals = (2...n).select{|x| n % x ==0}
#   vals.empty? ? "#{n} is prime" : vals
# end

# p divisors(100)


# #############################################################################################


# найти квадрат для слудеющего числа
# def find_next_square(sq)
#   a = Math.sqrt(sq)
#   b = Math.sqrt(sq).to_i
#   a % b == 0 ? b.next**2 : -1
# end
# p find_next_square(120)

# beter
# def find_next_square(sq)
#   number = Math.sqrt(sq) + 1
#   number % 1 == 0 ? number**2 : -1
# end
# find_next_square(120)


# ############################################################################################


# #beter
# ##Сортировка только не четных чисел
# arr = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  ##должно быть так [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]
# def demo(source_array)
#   arr_odd = source_array.select(&:odd?).sort ##[1, 3, 5, 7, 9] выбирает если число не четно и от меньшего к большему
#   source_array.map {|i| i.even? ? i : arr_odd.shift} 
#   ##если число четное кидает в "новый массив" 
#   ##иниче shift вырезает из arr_odd первый элемент и отдает новому массиву
# end
# p demo(arr)

###################################################

# a = [1, 2, 0, 1, 0, 1, 0, 3, 0, 1]
# #my
# def moveZeros(arr)
#   metka = [] 
#   val = arr.select{|i| i == 0}
#   arr.each { |k| metka << k if k != 0}
#   metka.concat(val)
# end
#beter
# def moveZeros(arr)
#   arr.sort_by! {|i| i == 0 ? 1 : 0}
# end

# p moveZeros(a) #[1, 2, 1, 1, 3, 1, 0, 0, 0, 0]


# ######################################################################################################


# better есть ли все буквы алфавита в строке
# string = "The quick brown fox jumps over the lazy dog!"

# def panagram?(string)
#   ('a'..'z').all? { |i| string.downcase.include? (i) } 
# end
# panagram?(string)

# #########################################################################


# def XO(str)
#   if str.downcase.include?("x" || "o")
#     str.count("x") == str.count("o")
#   else
#     "true // when no 'x' and 'o' is present should return true"
#   end
# end

# p XO('o ddd  0 oooxX')


# ##################################################################################################3


# -> "A-Bb-Ccc-Dddd"

# def accum(s)
#   metka = []
#   s.chars.each_with_index {|v, i| metka << v.upcase + v * i}
#   p metka.join("-")
#   #or  
#   p s.chars.each_with_index.map {|v, i| v.upcase + v * i}.join("-")
#   #or
#   p s.chars.map.with_index {|v, i| v.upcase + v * i}.join("-")
# end
# accum("abcd")


# ######################################################################################


# #найти слово с самым высоким рейтингом для букв a = 1, b = 2, c = 3

# #best
# def high(x)
#   x.scan(/\w+/).max_by{|x|x.sum-x.size*96}

#   #scan => "cruel world" ==> ["cruel", "world"]
#   #max_by { |x| x.length } => (albatross dog horse) ==> "albatross"
#   # x.sum => "ab".sum = 195 (вроде ord только для всего слова)
#   #x.size => "ab".size = 2 (колличество букв)
#   # a = "ab".sum
#   # b = "ab".size * 96 = 192
#   # a - b = 195 - 192
#   #96 - нужен чтобы получить позицию в алфавите если a.ord = 97

# end

# p high(word)

# def high(x)
#   x.split.max_by { |w| score_word(w) }
# end
	
# def score_word(word)
#   word.chars.inject(0) { |sum, ch| sum + (ch.ord - 96) }
#   #96 - нужен чтобы получить позицию в алфавите если a.ord = 97 - 96 = 1 для
#   # b.ord = 98, 98 - 96 = 2 и т.д.
# end


# ###########################################################################################


# arr = 'abcghbnyy' #=>  ['ab', 'c_']

# def solution(str)
#   (str + '_').scan(/../)
# end

# p solution(arr)


# ###########################################################################################
#В этой ката вы должны, учитывая строку, заменить каждую букву ее позицией в алфавите. 
#Если что-то в тексте не является буквой, игнорируйте это и не возвращайте. «а» = 1, «б» = 2 и т. д.

#a = "When index is negative, counts backward from the end of the array"

# def alphabet_position(text)
#   text.downcase.chars.select{ |i| ("a".."z").include?(i) }.map{ |x| x.ord - 96 }.join(" ")
# end

# #beter
# def alphabet_position(text)
#   text.gsub(/[^a-z]/i, '')#.chars.map{ |c| c.downcase.ord - 96 }.join(' ')
# end

# p alphabet_position(a)
#"23 8 5 14 9 14 4 5 24 9 19 14 5 7 1 20 9 22 5 3 15 21 14 20 19 2 1 3 11 23 1 18 4 6 18 15 13 20 8 5 5 14 4 15 6 20 8 5 1 18 18 1 25"


#############################################################
# # Цифры привести в цифру < 10
# def digital_root(n)
#   n < 10 ? n : digital_root(n.to_s.scan(/./).map(&:to_i).sum)
# end

# #the best
# def digital_root(n)
#   n < 10 ? n : digital_root(n.digits.sum)
# end

# p digital_root(23011991) #4


#############################################

# arr = [2, 1, 4, 8, 2]

# #the better
# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end

# a = arr.partition(&:odd?) # [[1], [2, 4, 8, 2]] Возвращает 2 массива где в первом будет согласно условию
# b = a.find(&:one?) #[1] Где только один элемент


############################################


# def read(welcome_msg: nil, validator: nil, error_msg: nil)
#   puts welcome_msg unless welcome_msg.nil?
  
#   value = gets.strip
#   return value if validator.nil? || validator.call(value)

#   puts error_msg unless error_msg.nil?

#   read(welcome_msg: welcome_msg, validator:validator, error_msg: error_msg)
# end

# read(welcome_msg: "You name:", 
#   validator: ->(val) { !val.empty? }, 
#   error_msg: "Имя не может быт пустым")


##############################################

#n = [1, 5, 3, 8, 4]

# def demo(arr)
#   len = arr.size #5
#   loop do
#     sw = false
#     (len - 1).times do |i|
#       if arr[i] > arr[i+1]
#         arr[i], arr[i+1] = arr[i+1], arr[i]
#         sw = true
#       end
#     end
#     break unless sw #если не true
#   end
#   arr
# end

# p demo(n)

p "dsbfb".skan(//)