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

  def add_entry(header, body)
    fail "You can't write to a locked diary" if locked?
    @entries.push(Entry.new(header, body))
    'Entry added'
  end

  def get_entries
    fail "You can't read a locked diary" if locked?
    @entries.map { |entry| "#{entry.header}: #{entry.body}" }
  end

  private
  def locked?
    @locked
  end

end

class Entry
  attr_reader :header, :body
  def initialize(header, body)
    @header = header
    @body = body
  end
end