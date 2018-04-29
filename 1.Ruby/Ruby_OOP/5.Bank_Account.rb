class BankAccount
  attr_accessor :holdername, :checkbal, :savebal
  @@num_of_account = 0
  def initialize(name)
    @holdername = name
    @acccountnum = create_account
    @checkbal = 0
    @savebal = 0
    @rate=interest_rate
    @@num_of_account +=1
  end

  def checkingdeposit (amount)
    @checkbal +=amount
    puts "\nYour current checking balance is $#{@checkbal}"
    self
  end

  def savingdeposit(amount)
    @savebal += amount
    puts "\nYour current saving balance is $#{@savebal}"
    self
  end

  def savingwithdraw(amount)  # redo this, in a simple if else statement
    @savebal -=amount
    puts "Insufficient Fund" if amount > @savebal
    puts "\nYour saving balace after withdraw is $#{@savebal}." unless amount > @savebal
    self
  end

  def checkingwithdraw(amount)  # redo this, in a simple if else statement
    @checkbal -= amount
    puts "Insufficient Fund" if amount > @checkbal
    puts "\nYour checking balace after withdraw is $#{@checkbal}." unless amount > @checkbal
    self
  end

=begin
  def withdraw(account, amount)
  if account.downcase == "checking"
    if amount > @checkbal
      puts "Insufficient"
    else
      @checkbal -=amount
    end

  elsif account.downcase == "saving"
    if amount >

same idea applies to deposit function 
=end




  def display_info
    puts "\nAccout Holder: #{@holdername}."
    puts "Your checking balance is $#{@checkbal}."
    puts "Your saving balance is $#{@savebal}."
    puts "Your total amount is : $#{@checkbal+@savebal}."
    puts "Your account number is #{@acccountnum}."
    puts "You current interest rate is #{@rate}."
    self
  end

  def self.numofaccount
    puts "\nOur Bank Currently has #{@@num_of_account} accounts."
  end

  private
  def create_account
    rand(10000..99999)
  end

  def interest_rate
    0.01
  end
end


myaccount = BankAccount.new("Isaac")
myaccount.checkingdeposit(1000).checkingwithdraw(200).savingdeposit(2000).savingwithdraw(2300).checkingdeposit(5000).display_info


BankAccount.numofaccount


#################### PLATFORM SOLUTION ####################
# class BankAccount
#   attr_reader :account_number, :checking, :saving
#
#   @@bank_accounts = 0
#
#   def initialize
#     @account_number = create_account
#     @checking = 0
#     @saving = 0
#     @@bank_accounts += 1
#     # not accessible since we do not have a reader for it
#     @interest_rate = 0.01
#   end
#
#   def deposit(account, amount)
#     if account.downcase == "checking"
#       @checking += amount
#     else
#       @saving += amount
#     end
#   end
#
#   def withdrawal(account, amount)
#     if account.downcase == "checking"
#       if @checking - amount < 0
#         raise "Insufficient Funds, you have #{@checking} in this account"
#       else
#         @checking -= amount
#       end
#     else
#       if @saving - amount < 0
#         raise "Insufficient Funds, you have #{@saving} in this account"
#       else
#         @saving -= amount
#       end
#     end
#   end
#
#   def total
#     "Checking Balance: #{@checking}\nSaving Balance: #{@saving}\nTotal Balance: #{@checking + @saving}"
#   end
#
#   def account_information
#     "Account Number: #{@account_number}\nInterest Rate: #{@interest_rate}\n#{self.total}"
#   end
#
#   def self.number_of_accounts
#     @@bank_accounts
#   end
#
#   private
#   def create_account
#     Array.new(10).map { rand(1..9) }.join
#   end
# end
