class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
    @transfer_occured = false
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if !@transfer_occured
      if valid?
        @sender.balance -= amount
        @receiver.balance += amount
        @status = "complete"
        @transfer_occured = true
      end
    end
  end

end
