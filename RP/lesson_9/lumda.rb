puts "How you age?"
age = gets.to_i

puts "Will you play?"
answer = gets.strip.capitalize

if answer == "Y" && age >= 18
    puts "Good, lets begin"

    money = 100

    add_money_proc = lambda { |sum, money|
        puts "You win #{sum}$"
        money + sum
    }

    sub_money_proc = lambda {|sum, money|
        puts "You lose #{sum}$"
        money - sum
    }

    actions = 
    {
        "000" => lambda { |money|
            puts "You balance zero"
            0
        },
        "111" => [10, add_money_proc],
        "222" => [20, add_money_proc],
        "333" => [30, add_money_proc],
        "444" => [40, add_money_proc],
        "555" => [50, add_money_proc],
        "666" => lambda { |money|
                puts "You lose half money"
                money / 2
        },
        "777"=> [70, sub_money_proc],
        "888"=> [80, sub_money_proc],
        "999"=> [90, sub_money_proc],
        "123"=> [123, sub_money_proc]
    }

    1000.times do 
        puts "Enter to go"
        gets

        num = rand(0..9).to_s + rand(0..9).to_s + rand(0..9).to_s

        puts "You #{num}"

        if actions.has_key?(num)
            if actions[num].is_a?(Array)
                money = actions[num][1].call(actions[num][0], money)
            elsif actions[num].is_a?(Proc)
                money = actions[num].call(money)
            end
        end

        puts "Ostalos money #{money}"

        if money == 0
            puts "You not have money"
            break
        elsif money < 0
            puts "Yon loser"
        end
    end
end