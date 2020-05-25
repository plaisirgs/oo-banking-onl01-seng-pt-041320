class BankAccount

  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
 
end






















# new_account = BankAccount.new("Chase")
# <....>
# new_account.name
# Chase