class Transfer 
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  

  def valid?
    @sender.valid? && @receiver.valid? && @status == "pending" && @sender.balance >
  end
  
  
  def execute_transaction
    if valid?
    @sender.balance = @sender.balance - @amount
    @receiver.balance = @receiver.balance + @amount
    @status = "complete"
  else
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
    end
  end
  
end
