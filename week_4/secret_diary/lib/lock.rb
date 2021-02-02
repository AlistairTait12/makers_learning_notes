class DiaryLock
  def initialize
    @locked_state = true
  end

  def lock
    @locked_state ? false : true
  end
end