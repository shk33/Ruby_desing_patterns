require "spec_helper"
require_relative '../lib/observer'

describe "Observer Pattern" do

  describe Hero3 do
    it "is cursed when discovers cursed Tile" do
      hero = Hero3.new
      tile = Tile.new cursed: true
      hero.discover tile

      expect(hero.cursed?).to be true  
    end

    it "is not cursed when discovers simple Tile without curse" do
      hero = Hero3.new
      tile = Tile.new
      hero.discover tile

      expect(hero.cursed?).to be false
    end
    
  end

  describe Tile do

    it "is not cursed by default" do
      tile = Tile.new
      expect(tile.cursed?).to be false  
    end

    it "can be created as cursed" do
      tile = Tile.new cursed: true
      expect(tile.cursed?).to be true  
    end

  end

end