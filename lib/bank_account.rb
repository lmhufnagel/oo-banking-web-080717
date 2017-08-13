class BankAccount
  attr_accessor :bank_account, :balance, :status
  attr_reader :name

  def initialize(name)
    @balance = 1000
    @name = name
    @status = "open"
  end

  def deposit(deposit)
    self.balance += deposit
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    @status == "open" && balance > 0

  end

  def close_account
    @status = "closed"
  end
end
