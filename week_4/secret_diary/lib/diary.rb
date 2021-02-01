class SecretDiary
  def initialize
    @locked = true
  end

  def unlock
    @locked = false
    'Diary unlocked'
  end

  def lock
    @locked = true
    'Diary locked'
  end

  def add_entry(title, body)
    fail "You can't write to a locked diary" if locked?
    'Entry added'
  end

  private
  def locked?
    @locked
  end

end