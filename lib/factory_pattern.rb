class Party
  attr_reader :members

  def initialize number, occupation
    @members = []
    number.times do
      members << create(occupation)
    end
  end

end

class PartyFactory < Party

  def create occupation
    if [:mage2, :warrior2].include? occupation 
      self.class.const_get(occupation.to_s.capitalize).new
    else
      raise "Not known class"
    end
  end
  
end

class Hero5
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

  def greet
    greeting = ["Hello"]
    greeting << unique_greeting_line
    greeting
  end

  def unique_greeting_line
    raise "You must define unique_greeting_line"  
  end

end

class Warrior2 < Hero5

  def rating_attack
    15
  end

  def occupation_abilities
    [:strike]
  end

  def unique_greeting_line
    "Warrior2 is ready to fight"
  end

end

class Mage2 < Hero5

  def rating_attack
    7
  end

  def occupation_abilities
    [:magic_arrow]
  end

end 