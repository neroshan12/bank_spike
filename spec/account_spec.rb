require 'account'

describe Account do
  subject(:account) {described_class.new}

  describe 'initialize' do
    it 'initializes with a balance of 0' do
      expect(account).to be_instance_of(Account)
    end
    it 'initializes with a balance of 0' do
      expect(account.balance).to eq(0)
    end
    it 'initializes with an empty transactions array' do
      expect(account.transactions).to eq([])
    end
  end

  describe 'deposit' do
    it 'allows a deposit of 10' do
      account.deposit(10)
      expect(account.balance).to eq(10)
  end
end

  describe 'withdraw' do
    it 'allows withdrawing of money' do
      account.withdraw(10)
      expect(account.balance).to eq(-10)
    end
  end

  describe 'print statement' do
    it 'allows pritning of a balance' do
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)
      expect(account.print_statement).to eq("date || credit || debit || balance
                                              02/11/17 || 1000 || - || 1000
                                              02/11/17 || 2000 || - || 3000
                                              02/11/17 || - || 500 || 2500
                                              Thanks for banking with Neros")
    end
  end
end
