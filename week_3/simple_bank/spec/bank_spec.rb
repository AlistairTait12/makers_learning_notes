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

  describe '#withdraw' do
    it 'can notify the user on how much they have withdrawn' do
      my_account = BankAccount.new(20)
      expect(my_account.withdraw(20)).to eq "You withdrew £20"
    end

    it 'the account balance should be correct after withdrawal' do
      my_account = BankAccount.new
      my_account.deposit(30)
      my_account.withdraw(25)
      expect(my_account.view_bal).to eq "Your current balance is £5"
    end

    it 'warns the customer that they hace insufficient funds to make the withdrawal' do
      my_account = BankAccount.new(100)
      expect(my_account.withdraw(101)).to eq "You do not have enough in your account!"
    end

    it 'warns the customer that there are insufficient funds with starting bal of 0' do
      my_account = BankAccount.new
      expect(my_account.withdraw(90)).to eq "You do not have enough in your account!"
    end

  end

  describe '#view_bal' do
    it 'lets the user view their balance, no matter the balance' do
      my_account = BankAccount.new(100)
      expect(my_account.view_bal).to eq "Your current balance is £100"
    end
  end
end