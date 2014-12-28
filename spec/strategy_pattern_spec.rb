require "spec_helper"
require_relative '../lib/strategy'

describe "Strategy Pattern" do

  describe "Strategy contract" do
      it "Hero sends print message to printer" do
        printer = double("printer")
        printer.stub(:print)
        hero = Hero2.new printer

        printer.should_receive(:print).with hero.damage, hero.health, hero.skills
        hero.print_stats
      end

      it "BattleStats responds to printer message" do
        expect(BattleStats.new).to respond_to(:print) 
      end

      it "SkillStats responds to printer message" do
        expect(SkillStats.new).to respond_to(:print) 
      end
  end

  describe Hero2 do
    let(:hero) { Hero2.new BattleStats.new }

    it "has damage" do
      expect(hero.damage).to eq(10)  
    end

    it "has health" do
      expect(hero.health).to eq(5)  
    end

    describe "Printing Character Stats" do
   
      it "prints battle stats be default" do
        expect(hero.print_stats).to eq("<html>Damage: 10\nHealth: 5</html>")  
      end

      it "prints skills" do
        hero.printer = SkillStats.new
        expect(hero.print_stats).to eq("<html>Stealth\nDriving\nIntimidation\n</html>")  
      end

      it "can use custom ad hoc printer" do
        result = hero.print_stats do |damage, health, skills|
          "Damage: #{damage}\nNumber of skills: #{skills.size}"
        end
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