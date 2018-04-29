require_relative 'Bank_Account'
RSpec.describe BankAccount do
  before(:each) do
    @bankaccount = BankAccount.new('name')
  end

  it 'has a getter method for retireving the checking account balance' do
    expect(@bankaccount.checkbal).to eq(0)
  end

  it 'has a getter method for retireving the total amount' do
    @bankaccount.checkbal=500
    @bankaccount.savebal=1000
    expect(@bankaccount.checkbal+@bankaccount.savebal).to eq(1500)
  end

  it 'has a method/function that user can withdraw checking' do
    amount = rand(0..@bankaccount.checkbal)
    expect(@bankaccount.checkingwithdraw(amount)).to eq(@bankaccount.checkbal-amount)
  end

  it 'has a method/function that user can withdraw saving' do
    amount = rand(0..@bankaccount.savebal)
    expect(@bankaccount.savingwithdraw(amount)).to eq(@bankaccount.savebal-amount)
  end

  it 'Raises an error if a user tries to withdraw more many than the balance for saving' do
    expect{@bankaccount.savingwithdraw(10000)}.to raise_error("Insufficient Fund")
  end

  it 'Raises an error if a user tries to withdraw more many than the balance for checking' do
    expect{@bankaccount.checkingwithdraw(10000)}.to raise_error("Insufficient Fund")
  end

  it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
    expect{@bankaccount.num_of_account}.to raise_error(NoMethodError)
  end

  it "Raises an error when the user attempts to set the interest rate" do
    expect{@bankaccount.rate}.to raise_error(NoMethodError)
  end

end
