require_relative 'hero'
require_relative 'dragon'

class GameEngin
  def initialize
    @hero = Hero.new
    @dragon = Dragon.new
    @hero_turn = true
  end

  def run
    loop do
      puts "Здоровье героя #{@hero.hit_points}"
      puts  "Здоровье дракона #{@dragon.hit_points}"
      if @hero_turn
        #ход героя
        do_hero_turn
      else
        do_dragon_turn
      end

      if @dragon.hit_points <= 0
        puts "Герой победил"
        break
      end

      if @hero.hit_points <= 0
        puts "Дракон победил"
        break
      end

      @hero_turn = !@hero_turn
        # true =! false => false =! true это переключатель который бедет менятся
      end
  end

  private
  def do_hero_turn
    puts "\nХодит Герой"
    puts "Что делаем? Атака - A, Лечение - Z. У вас #{@hero.health_potions} зелье"
    action = gets.strip[0]

    if action == 'Z'
      @hero.drink_potion
    else
      dmg = @hero.attack(@dragon)
      puts "Герой ударил на #{dmg}\n"
    end
  end

  def do_dragon_turn
    puts "\nХодит Дракон"
    dmg = @dragon.attack(@hero)
    puts "Дракон ударил #{dmg}\n"
  end
end