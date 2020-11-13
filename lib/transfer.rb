class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending" 
  end

  def valid?
    # @sender.BankAccount.valid? ? true : false
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction #want to subtract amount from sender's balance, and add amount to receiver's balance
    if valid? && sender.balance > amount && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer #reverse a completed transfer
    if self.status = "complete" && execute_transaction #and execute transaction is true
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    end
    
  end



end
