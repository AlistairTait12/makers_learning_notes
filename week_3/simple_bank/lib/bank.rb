class BankAccount
  def initialize(starting_funds = 0)
    @balance = starting_funds
  end
  def deposit(amount)
    @balance += amount
    "You deposited £#{amount} into your account"
  end

  def withdraw(amount)
    if amount > @balance
      "You do not have enough in your account!"
    else
      @balance -= amount
      "You withdrew £#{amount}"
    end
  end

  def view_bal
    "Your current balance is £#{@balance}"
  end

end