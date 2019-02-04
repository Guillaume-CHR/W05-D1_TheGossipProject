require 'rails_helper'

RSpec.describe JoinGossipTag, type: :model do
	 before(:each) do 
    @join_gossip_tag = FactoryBot.create(:join_gossip_tag)   
  end

  it "has a valid factory" do
    expect(build(:join_gossip_tag)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@join_gossip_tag).to be_a(JoinGossipTag)
    end
  end
end
