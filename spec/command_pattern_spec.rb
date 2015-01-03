require "spec_helper"
require_relative '../lib/command_pattern'

describe "Commando Pattern" do

  describe "Undo" do
    
    it "can be undone" do
      hero = Hero4.new
      turn = Turn.new
      wood  = ChopWoodCommand.new hero
      heal  = HealCommand.new hero
      money = GetMoneyCommand.new hero

      turn.make_move(wood)
      turn.make_move(heal)

      expect(hero.wood).to   eq 10
      expect(hero.health).to eq 5
      
      turn.undo_move
      expect(hero.health).to eq 0

      turn.undo_move
      expect(hero.wood).to eq 0

      turn.redo_move
      expect(hero.wood).to eq 10

      turn.redo_move
      expect(hero.health).to eq 5

      turn.undo_move
      expect(hero.health).to eq 0
    end

  end

  describe Reactor do
    
    it "is fixed if commands are executed in the right order" do
      computer = Computer.new
      computer.add AmplifyShieldCommand.new
      computer.add CalibrateCommand.new
      computer.add TestCompilerCommand.new
      computer.add InstallCommand.new

      reactor = Reactor.new
      expect(reactor.functional?).to be false  

    end

  end

  describe Computer do
    let(:computer) { Computer.new } 

    before :each do
      computer.add(CalibrateCommand.new)
      computer.add(TestCompilerCommand.new)
    end

    it "can add commands to its queue" do
      expect(computer.queue.size).to eq(2)        
    end

    it "executes all commands in order" do
      expect(computer.execute).to eq %Q{
Calibrated
Compiling
} 
    end
  end
  
  describe "Commands" do
    
    describe AmplifyShieldCommand do
      it "amplifies shield" do
        command = AmplifyShieldCommand.new
        expect(command.execute).to eq("Amplify Shield")  
      end
    end

    describe CalibrateCommand do
      it "calibrates driver" do
        command = CalibrateCommand.new
        expect(command.execute).to eq("Calibrated")  
      end
    end

    describe TestCompilerCommand do
      it "test compiler" do
        command = TestCompilerCommand.new
        expect(command.execute).to eq("Compiling")  
      end
    end

    describe InstallCommand do
      it "test install" do
        command = InstallCommand.new
        expect(command.execute).to eq("Installing")  
      end
    end

  end

end