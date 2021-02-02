class SecretDiary
  attr_reader :lock_type
  def initialize(lock_type = DiaryLock.new)
    @lock_type = lock_type
    @entries = []
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
    @lock_type.locked_state
  end

end