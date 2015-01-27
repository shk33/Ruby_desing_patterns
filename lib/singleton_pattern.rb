class HeroFactory2

  @@instance = nil

  def self.instance
    @@instance = HeroFactory2.send(:new) unless @@instance
    @@instance
  end

  def create_warrrior
    Warrior.new
  end

  def create_mage
    Mage.new
  end
  
  private_class_method :new
end