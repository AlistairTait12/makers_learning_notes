require 'diary'
require 'lock'
require 'entry'

describe SecretDiary do
  describe '#unlock' do
    it 'unlocks a locked diary' do
      expect(subject.lock_type.change_state).to eq false
    end
  end
  
  describe '#lock' do
    it 'locks an unlocked diary' do
      subject.lock_type.change_state
      expect(subject.lock_type.change_state).to eq true
    end

    it 'diaries are initialized as locked by default' do
      expect { subject.add_entry("entry1", "blah blah blah") }.to raise_error "You can't write to a locked diary"
    end

    it 'access denied also applies to get_entries when locked' do
      expect { subject.get_entries }.to raise_error "You can't read a locked diary"
    end
  end

  describe '#add_entry' do
    it 'allows entries to be added in an `unlocked` state' do
      diary = SecretDiary.new
      diary.lock_type.change_state
      expect(diary.add_entry("entry 1", "blah blah blah")).to eq "Entry added"
    end
  end

  describe '#get_entries' do
    it 'allows user to view all the entries they have added so far' do
      diary = SecretDiary.new
      diary.lock_type.change_state
      diary.add_entry("Yet another entry", "Coded today...")
      diary.add_entry("Some other entry", "made diary class")
      expect(diary.get_entries).to eq ["Yet another entry: Coded today...", "Some other entry: made diary class"]
    end
  end
end