class Transfer 
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  

  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  
  def execute_transaction
    if @status != "complete"
    @sender.balance = @sender.balance - @amount
    @receiver.balance = @receiver.balance + @amount
    @status = "complete"
    end
  end
  
end
