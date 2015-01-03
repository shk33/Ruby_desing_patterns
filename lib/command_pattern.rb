class Turn

  def initialize
    @moves = []
    @undone_moves = []
  end

  def make_move move
    move.execute
    @moves << move
  end

  def undo_move
    move = @moves.pop
    move.unexecute
    @undone_moves << move
  end

  def redo_move
    move = @undone_moves.pop
    self.make_move move
  end
  
end

class Hero4
  attr_accessor :wood, :health, :money  

  def initialize
    @wood   = 0
    @health = 0
    @money  = 0
  end
  
end

class ChopWoodCommand
  
  def initialize hero
    @hero = hero
  end

  def execute
    @hero.wood += 10
  end
  
  def unexecute
    @hero.wood -= 10
  end

end

class HealCommand
  
  def initialize hero
    @hero = hero
  end

  def execute
    @hero.health += 5
  end
    
  def unexecute
    @hero.health -= 5
  end
end

class GetMoneyCommand

  def initialize hero
    @hero = hero
  end

  def execute
    @hero.money += 50
  end
    
  def execute
    @hero.money -= 50
  end
end

##################
# Second Section
##################

class Reactor

  def initialize
    @functional = false
    @right_command = %Q{
Amplify Shield
Calibrated
Compiling
Installing
}
  end

  def functional?
    @functional
  end

  def fix result
    if result == @right_command
      @functional = true
    end
  end
  
  
end

class Computer
  attr_reader :queue

  def initialize
    @queue = []
  end

  def add command
    @queue << command 
  end

  def execute
    @queue.inject("\n") do |result, command|
      "#{result}#{command.execute}\n"
    end
  end
  
end

class AmplifyShieldCommand
  
  def execute
    "Amplify Shield"
  end
  
end

class CalibrateCommand
  
  def execute
    "Calibrated"
  end
  
end

class TestCompilerCommand
  
  def execute
    "Compiling"
  end
  
end

class InstallCommand
  
  def execute
    "Installing"
  end
  
end