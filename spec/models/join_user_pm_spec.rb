require 'rails_helper'

RSpec.describe JoinUserPm, type: :model do
	 before(:each) do 
    @join_user_pm = FactoryBot.create(:join_user_pm)   
  end

  it "has a valid factory" do
    expect(build(:join_user_pm)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@join_user_pm).to be_a(JoinUserPm)
    end
  end
end
