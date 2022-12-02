random_number = (rand * 10).to_i + 1
puts "I guessed a number"

iterations = 0

loop do
    iterations += 1

    if iterations > 100
        puts "You lose"
    end

    user = gets.to_i

    if user == random_number
        puts "You winner"
        break
    elsif user > random_number
        puts "The number is less"
    else
        puts "The number is greater"
    end
end