require 'rails_helper'

RSpec.describe Gossip, type: :model do
  before(:each) do 
    @gossip = FactoryBot.create(:gossip)   
  end

  it "has a valid factory" do
    expect(build(:gossip)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@gossip).to be_a(Gossip)
    end

    describe "#title" do
      it { expect(@gossip).to validate_presence_of(:title) }
    end

    describe "#content" do
      it { expect(@gossip).to validate_presence_of(:content) }
    end
  end
end
