class PassLock
  attr_reader :locked_state
  def initialize(password)
    @password = password
    @locked_state = true
  end

  def change_state(entered_password = nil)
    if @locked_state == false
      @locked_state = true
    elsif @locked_state == true && entered_password == @password
      @locked_state = false
    end
  end
end