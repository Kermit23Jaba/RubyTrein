arr = [1, 2, 3, 4]

arr2 = arr.shuffle.each_with_index.inject({}) do |result, (item, i)|
    result[i] = item
    i += 1
    result
end
puts arr2
