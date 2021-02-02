class DiaryLock
  attr_reader :locked_state
  def initialize
    @locked_state = true
  end

  def change_state
    @locked_state ? @locked_state = false : @locked_state = true
  end
end