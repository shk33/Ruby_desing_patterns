class Hero2
  attr_accessor :health, :skills, :damage
  attr_accessor :printer

  def initialize(printer)
    @damage  = 10
    @health  = 5
    @printer = printer
    @skills  = [:stealth, :driving, :intimidation]
  end

  def print_stats(stats = nil)
    printer.print(self)
  end
  
end

class BattleStats
  
  def print context
    "Damage: #{context.damage}\nHealth: #{context.health}"
  end
  
end

class SkillStats
  
  def print context
    context.skills.inject("") {|result,skill| "#{result}#{skill.to_s.capitalize}\n"}
  end
  
end