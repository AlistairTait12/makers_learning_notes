require 'bank'
describe BankAccount do
  describe '#deposit' do
    it 'can notify the user that the funds have been deposited' do
      my_account = BankAccount.new
      expect(my_account.deposit(100)).to eq "You deposited £100 into your account"
    end
    it 'can notify the user that any amount of funds have been deposited' do
      my_account = BankAccount.new
      expect(my_account.deposit(42)).to eq "You deposited £42 into your account"
    end
  end
end