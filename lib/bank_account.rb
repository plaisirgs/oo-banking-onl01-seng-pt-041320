class BankAccount

  attr_accessor :name, :balance, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = open
  end
  
 
end






















# new_account = BankAccount.new("Chase")
# <....>
# new_account.name
# Chase