require "spec_helper"
require_relative '../lib/command_pattern'

describe "Commando Pattern" do
  
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