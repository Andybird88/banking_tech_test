# frozen_string_literal: true

require './lib/account'

describe Account do
  it 'expects balance of a new account to be 0' do
    test_account = Account.new
    expect(test_account.balance).to eq(0)
  end

  it 'allows a deposit' do
    test_account = Account.new
    test_account.deposit(500, '01/01/2023')
    expect(test_account.balance).to eq(500)
  end

  it 'allows a withdrawl' do
    test_account = Account.new
    test_account.deposit(500, '01/01/2023')
    test_account.withdraw(250, '02/01/2023')
    expect(test_account.balance).to eq(250)
  end

  it 'can display correct number of transacitions on statement' do
    test_account = Account.new
    test_account.deposit(20, '01/01/2023')
    test_account.deposit(30, '02/01/2023')
    test_account.withdraw(40, '03/01/2023')
    expect(test_account.statement.length).to eq(3)
  end

  it 'calculates correct balance if transactions given in date order' do
    test_account = Account.new
    test_account.deposit(20, '01/01/2023')
    test_account.deposit(30, '02/01/2023')
    test_account.withdraw(40, '03/01/2023')
    expect(test_account.balance).to eq(10)
  end
end
