require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do 
    @like = FactoryBot.create(:like)   
  end

  it "has a valid factory" do
    expect(build(:like)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@like).to be_a(Like)
    end
  end
end
