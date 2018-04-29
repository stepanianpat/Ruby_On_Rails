require 'rails_helper'

RSpec.describe Product, type: :model do
  it "should be a valid product" do
    # expect(build(:product, user:build(:user))).to be_valid
    expect(build(:product)).to be_valid
  end
end
