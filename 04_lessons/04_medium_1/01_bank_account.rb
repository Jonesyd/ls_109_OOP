class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

#Ben is right

account = BankAccount.new(1)
puts account.positive_balance?
