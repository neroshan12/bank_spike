class Account

  attr_reader :transactions, :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << [Time.now.strftime("%d/%m/%y"), amount, '-', @balance].join(" || ")
    @transactions
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << [Time.now.strftime("%d/%m/%y"), '-', amount, @balance].join(" || ")
    @transactions
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @transactions.each {|transaction| puts transaction}
    puts 'Thanks for banking with Neros'
  end
end
