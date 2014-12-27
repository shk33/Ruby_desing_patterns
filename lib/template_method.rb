class Hero
  attr_reader :damage, :abilities

  def initialize
    initialize_stats
    @damage    = rating_attack
    @abilities = occupation_abilities
  end

  def attack
    "Attacked dealing #{@damage} damage"
  end

  def rating_attack
    10
  end

  def occupation_abilities
    []
  end

  def initialize_stats
  end

end

class Warrior < Hero

  def rating_attack
    15
  end

  def occupation_abilities
    [:strike]
  end

end

class Mage < Hero
  
  def rating_attack
    7
  end

  def occupation_abilities
    [:magic_arrow]
  end

end 