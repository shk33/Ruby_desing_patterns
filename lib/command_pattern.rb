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