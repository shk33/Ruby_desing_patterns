require "spec_helper"
require_relative '../lib/factory_pattern'

describe "Factory Pattern" do
  
  it "is a party of warriors" do
    party = PartyFactory.new(3, :warrior2)
    expect(party.members.count {|member|  member.class == Warrior2} ).to eq(3)
  end

  it "is a party of mages" do
    party = PartyFactory.new(3, :mage2)
    expect(party.members.count {|member|  member.class == Mage2} ).to eq(3)
  end

end