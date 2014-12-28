module Observerable
  attr_reader :observers

  def initialize attrs = {}
    @observers = []
  end

  def add_observer observer
    @observers << observer
  end

  def notify_observers
    @observers.each do |observer|
      observer.update
    end
  end

end

class Tile
  include Observerable

  def initialize attrs = {}
    super
    @cursed = attrs.fetch(:cursed, false)
  end

  def cursed?
    @cursed
  end

  def activate_curse 
    notify_observers
  end
  
end

class Hero3
  attr_reader :health

  def initialize
    @cursed = false
    @health = 10
  end

  def damage hit
    @health -= hit
  end

  def cursed?
    @cursed
  end

  def discover tile
    if tile.cursed?
      @cursed = true
      tile.add_observer self
    end
  end

  def update
    self.damage 4
  end

end
