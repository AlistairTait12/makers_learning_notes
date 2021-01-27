class BankAccount
  def initialize(starting_funds=0)
    @balance = starting_funds
  end
  def deposit(amount)
    "You deposited £#{amount} into your account"
  end

  def withdraw(amount)
    "You withdrew £#{amount}"
  end

  def view_bal
    "Your current balance is £#{@balance}"
  end

end