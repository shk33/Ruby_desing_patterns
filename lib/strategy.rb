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
    if block_given?
      yield damage, health, skills
    else
      printer.print(damage, health, skills)
    end
  end
  
end

class HTMLPrinter
  
  def print damage, health, skills
    result  = header
    result += content damage, health, skills
    result += footer
  end
  
  def header
    "<html>"
  end

  def footer
    "</html>"
  end

  def content
    raise "You must implement content"
  end
  
  
end

class BattleStats < HTMLPrinter
  
  def content damage, health, skills
    "Damage: #{damage}\nHealth: #{health}"
  end
  
end

class SkillStats < HTMLPrinter
  
  def content damage, health, skills
    skills.inject("") {|result,skill| "#{result}#{skill.to_s.capitalize}\n"}
  end
  
end