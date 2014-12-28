require "spec_helper"
require_relative '../lib/observer'

describe "Observer Pattern" do

  describe Hero3 do
    let(:hero) { Hero3.new } 


    it "is cursed when discovers cursed Tile" do
      tile = Tile.new cursed: true
      hero.discover tile

      expect(hero.cursed?).to be true  
    end

    it "is not cursed when discovers simple Tile without curse" do
      tile = Tile.new
      hero.discover tile

      expect(hero.cursed?).to be false
    end
    
    it "has default health equal to 10" do
      expect(hero.health).to eq(10)  
    end

    it "can be damaged" do
      hero.damage(6)
      expect(hero.health).to eq(4)  
    end

  end

  describe Tile do

    it "activates curse" do
      hero = Hero3.new
      tile = Tile.new cursed: true, hero: hero

      tile.activate_curse
      expect(hero.health).to eq(4)  

    end

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