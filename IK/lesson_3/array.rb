arr = [1, 2, 3, 4]

p arr.sample #1 случайное число
p arr.size - 1  #4 размер массива
p arr.length - 1 #4 размер массива
p arr_index = (rand * arr.size - 1).to_i #2 рандомное число из массива arr
p arr.shuffle #3 2 4 1 перемешать массив
p random = rand(0...arr.size) # 0т 0 до 4