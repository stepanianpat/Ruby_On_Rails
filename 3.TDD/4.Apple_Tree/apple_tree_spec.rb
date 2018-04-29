require_relative 'apple_tree'
RSpec.describe do
  before(:each) do
    @appletree=Appletree.new
  end

  it 'should have an age attribute with getter and setter method' do
    @appletree.age= 1
    expect(@appletree.age).to eq(1)
  end

  it 'should have a height attribute with only a getter method' do
    expect{@appletree.height=12}.to raise_error(NoMethodError)
  end

  it 'should have an apple count attribute with only a getter method' do
    expect{@appletree.height=12}.to raise_error(NoMethodError)
  end

  it 'should have a method called year_gone_bye' do
    expect(@appletree.year_gone_bye).to eq("1,1.1,0")
  end

  it 'should not grow apples for the first three years of its life' do
    4.times {@appletree.year_gone_bye}
    expect(@appletree.apple_count).to eq(2)
  end

  it 'should have a method called pick_apples that takes all of the apples off the tree' do
    @appletree.pick_apples
    expect(@appletree.apple_count).to eq(0)
  end

  it 'should not grow apples if its older than ten' do
    11.times{@appletree.year_gone_bye}
    expect(@appletree.apple_count).to eq(14)
  end


end
