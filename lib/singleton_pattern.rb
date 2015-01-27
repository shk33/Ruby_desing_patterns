require "singleton"
class HeroFactory2

  include Singleton
  
  def create_warrrior
    Warrior.new
  end

  def create_mage
    Mage.new
  end
  
  private_class_method :new
end