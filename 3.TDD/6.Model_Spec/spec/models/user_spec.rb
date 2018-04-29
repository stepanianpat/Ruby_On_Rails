require 'rails_helper'
RSpec.describe User, type: :model do
  # Our control
  context "With valid attributes" do
      it "should save" do
        user=User.new(
          first_name:"Isaac",
          last_name:"La",
          email:"isaac@dojo.com"
        )
      expect(user).to be_valid
      end
  end

  it 'should not save the user if first_name is blank' do
    user=User.new(first_name:"",last_name:"La",email:"isaac@dojo.com")
    expect(user).to be_invalid
    # expect(build(:user,first_name:"")).to be_invalid  #can not use build at this time is because build is factory.girl building method
  end

  it 'should not save the user if last_name is blank' do
    user=User.new(first_name:"Isaac",last_name:"",email:"isaac@dojo.com")
    expect(user).to be_invalid
    # expect(build(:user,last_name:"")).to be_invalid
  end

  it 'should not save the user if email aleady exists' do
    User.create(first_name:"Isaac",last_name:"La",email:"isaac@dojo.com")
    user2=User.new(first_name:"Yanbin",last_name:"La",email:"isaac@dojo.com")
    expect(user2).to be_invalid
  end

  it 'should have a valid email' do
    user=User.new(first_name:"Isaac",last_name:"La",email:"isaac@")
    expect(user).to be_invalid
  end

end
