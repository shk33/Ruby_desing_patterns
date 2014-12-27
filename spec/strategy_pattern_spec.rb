require "spec_helper"
require_relative '../lib/strategy'

describe "Strategy Pattern" do

  describe Hero2 do
    let(:hero) { Hero2.new }

    it "has damage" do
      expect(hero.damage).to eq(10)  
    end

    it "has health" do
      expect(hero.health).to eq(5)  
    end

    describe "Printing Character Stats" do
      it "prints battle stats be default" do
        expect(hero.print_stats).to eq("Damage: 10\nHealth: 5")  
      end
    end

    describe "skills" do

      it "has stealth" do
        expect(hero.skills).to include(:stealth)
      end

      it "has driving" do
        expect(hero.skills).to include(:driving)
      end

      it "has intimidation" do
        expect(hero.skills).to include(:intimidation)
      end

    end

  end

end