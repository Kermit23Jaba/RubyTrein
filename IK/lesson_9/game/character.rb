class Character
  attr_reader :hit_points
  #public это по умолчанию, открытые методы класса
  def attack(target)
    dmg = rand(min_dmg..max_dmg) #self => Hero или Dragon
    target.receive_dmg(dmg)
    after_attack

    dmg
  end

  def min_dmg
    self.class::MIN_DMG
  end

  def max_dmg
    self.class::MAX_DMG
  end
  #private #это только внутри класса. Из вне вызвать нельзя. Нельзя вызвать метод для других методов для других образцов класса.
  protected #это только внутри класса и для методов этого класса. Из вне вызвать нельзя. Можно вызвать метод для других методов для других образцов класса.
  def receive_dmg(dmg)
    @hit_points -= dmg 
  end

  private

  def after_attack
  end
end
