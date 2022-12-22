
class Pravo
  attr_reader :name

  def initialize name
    @name = name
    @health = [100, 100, 100]
  end

  def delete_minus(arr)
    arr.each do |i|
      arr[arr.index(i)] = 0 if i <= 0
    end
    arr
  end
    
    def kogo_ataka(arr)
      metka = []
      arr.each_with_index do |name, index|
        if name > 0
          metka << index
        end
      end
      metka
  end
    
  def ataka(name, arr)
    m = kogo_ataka(arr)
      if m != []
        dmg = rand(0..100)
        arr[m.sample] -= dmg
        puts "Урон -  #{dmg}  Команде #{name}"
        arr
      end
    return
  end
    
    def victory(name, this)
        bot_1_live = this.count { |x| x == 0}
        if bot_1_live == this.size
            puts "#{name} мертвы"
            return true
        end
    end

  def och
    name = @name
    health = @health
    ataka(name, health)
    delete_minus(health)
    p "Команда #{name} c здоровьем #{health}"
    exit if victory(name, health)
  end
end

bot_1 = Pravo.new("Autobots")
bot_2 = Pravo.new("Decepticons")

loop do
  bot_1.och
  bot_2.och
end


