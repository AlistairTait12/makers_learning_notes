require 'diary'
require 'lock'
require 'entry'
require 'pass'

context SecretDiary do
  describe 'PassLock password protects a diary' do
    it 'prevents a diary from being accessed if password does not match' do
      pass_diary = SecretDiary.new(PassLock.new('password1'))
      pass_diary.lock_type.change_state('password2')
      expect{ pass_diary.add_entry('Today', 'blah') }.to raise_error "You can't write to a locked diary"
    end

    it 'allows read and write access once password correct' do
      pass_diary = SecretDiary.new(PassLock.new('password1'))
      pass_diary.lock_type.change_state('password1')
      expect(pass_diary.add_entry('Today', 'blah')).to eq 'Entry added'
    end
  end
end