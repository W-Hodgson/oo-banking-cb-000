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
    if @t
    @sender.balance -= amount
    @receiver.balance += amount
    @status = "complete"
  end

end
