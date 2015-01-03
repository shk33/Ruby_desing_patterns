require "spec_helper"
require_relative '../lib/factory_pattern'

describe "Factory Pattern" do
  let(:party) { PartyFactory.new(HeroFactory.new) } 
  it "is a party of warriors" do
    party.add_warriors 3
    expect(party.members.count {|member|  member.class == Warrior2} ).to eq(3)
  end

  it "is a party of mages" do
    party.add_mages 3
    expect(party.members.count {|member|  member.class == Mage2} ).to eq(3)
  end

  it "is a mixed party" do
    party.add_mages 1
    party.add_warriors 2
    expect(party.members.count {|member|  member.class == Mage2} ).to eq(1)
    expect(party.members.count {|member|  member.class == Warrior2} ).to eq(2)
  end

end