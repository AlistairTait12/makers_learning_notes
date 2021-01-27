require 'bank'
describe BankAccount do
  describe '#deposit' do
    it 'can notify the user that the funds have been deposited' do
      my_account = BankAccount.new
      expect(my_account.deposit(100)).to eq "You deposited £10 into your account"
    end
  end
end