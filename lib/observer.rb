class Tile

  def initialize attrs = {}
    @cursed = attrs.fetch(:cursed, false)
  end

  def cursed?
    @cursed
  end
  
end

class Hero3
  
  def initialize
    @cursed = false
  end

  def cursed?
    @cursed
  end

  def discover tile
    @cursed = true if tile.cursed?
  end

end
