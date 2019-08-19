class Transfer

  attr_accessor :sender, :receiver, :status

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = transfer_amount
  end
end
