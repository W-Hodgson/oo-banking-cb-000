class Transfer

  attr_accessor :sender, :receiver, :status

  def initialize(sender, receiver)
    @sender = sender
    @receriver = receiver
    @status = "pending"
  end
end
