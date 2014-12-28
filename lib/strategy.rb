class Hero2
  attr_accessor :health, :skills, :damage
  attr_accessor :printer

  def initialize(printer)
    @damage  = 10
    @health  = 5
    @printer = printer
    @skills  = [:stealth, :driving, :intimidation]
  end

  def print_stats
    printer.print(damage, health, skills)
  end
  
end

class BattleStats
  
  def print damage, health, skills
    "Damage: #{damage}\nHealth: #{health}"
  end
  
end

class SkillStats
  
  def print damage, health, skills
    skills.inject("") {|result,skill| "#{result}#{skill.to_s.capitalize}\n"}
  end
  
end