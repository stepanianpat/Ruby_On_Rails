require 'rails_helper'

RSpec.describe User, type: :model do
  context "With valid attributes" do
    it "shoudd save" do
      expect(build(:user)).to be_valid
    end

  context "With invalid attributes"
    it "should not save if first_name is empty" do
      expect(build(:user, first_name:"")).to be_invalid
    end

    it "should not save if last_name is empty" do
      expect(build(:user, last_name:"")).to be_invalid
    end

    it "should not save if email is empty" do
      expect(build(:user, email:"")).to be_invalid
    end

    it "should not save if email is valid" do
      expect(build(:user, email:"yanbin@")).to be_invalid
    end

    it "should not save if email is valid" do
      create(:user)
      expect(build(:user)).to be_invalid
    end





  end

end
