require 'diary'

describe SecretDiary do
  describe '#unlock' do
    it 'unlocks a locked diary' do
      expect(subject.unlock).to eq 'Diary unlocked'
    end

    it 'allows entries to be added and accessed in an `unlocked` state' do
      diary = SecretDiary.new
      diary.unlock
      expect(diary.add_entry("entry 1", "blah blah blah")).to eq "Entry added"
    end
  end
  
  describe '#lock' do
    it 'locks an unlocked diary' do
      expect(subject.lock).to eq 'Diary locked'
    end

    it 'diaries are initialized as locked by default' do
      expect { subject.add_entry("entry1", "blah blah blah") }.to raise_error "You can't write to a locked diary"
    end
  end

  describe '#add_entry' do

  end

  describe '#get_entries' do

  end
end