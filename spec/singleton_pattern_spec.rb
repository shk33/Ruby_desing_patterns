require "spec_helper"
require_relative '../lib/singleton_pattern'

describe "Singleton Pattern" do
  let(:factory) { HeroFactory2.instance }

  it "returns instance of HeroFactory2" do
     expect(factory).to be_instance_of HeroFactory2 
   end 

  it "is the same object even when we get another instance" do
    another_factory = HeroFactory2.instance
    expect(another_factory).to eq(factory)  
  end

  it "has no access to 'new' method" do
    skip
    #expect { raise StandardError }.to raise_error
    #expect(raise NoMethodError).to raise_error(NoMethodError)   
    expect(raise HeroFactory2.new ).to raise_exception
  end

end