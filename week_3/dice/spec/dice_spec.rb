require 'dice'
describe Dice do
  it 'responds to #roll' do 
    expect(subject).to respond_to :roll
  end

  describe '#roll' do
    it 'returns a result less than or equal to 6' do
      expect(subject.roll).to be <= 6
    end

    it 'returns a result greater than or equal to 1' do
      expect(subject.roll).to be >= 1
    end
  end

  describe '#multi_roll' do
    it 'can roll multiple dice at the same time' do
      my_rolls = subject.multi_roll(3)
      expect(my_rolls.length).to eq 3
    end
  end

  describe '#score' do
    it 'lets the user know the result of each dice roll on their last multi roll' do
      # not yet sure how to write this test
    end
  end
end