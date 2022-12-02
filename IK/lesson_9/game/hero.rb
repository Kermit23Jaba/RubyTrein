require_relative 'character'

class Hero < Character
  attr_reader :health_potions

  MIN_DMG = 1
  MAX_DMG = 7

  POTION_STRENGHT = 4

  def initialize
    @hit_points = 20
    @health_potions = 2
    @drunk_potion = false
  end

  def min_dmg
    @drunk_potion ? 0 : self.class::MIN_DMG
  end

  def drink_potion
    if @health_potions > 0
      @hit_points += POTION_STRENGHT
      puts "Здоровья героя повысилось на #{POTION_STRENGHT}"
       @health_potions -= 1
    end
      @drunk_potion = true
  end

  private

  def after_attack
    @drunk_potion = false if @drunk_potion #true
  end
end
