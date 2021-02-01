class SecretDiary
  def initialize
    @locked = true
    @entries = []
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
    @entries.push({title => body})
    'Entry added'
  end

  def get_entries
    @entries.each do |entry| 
      entry
    end
  end

  private
  def locked?
    @locked
  end

end