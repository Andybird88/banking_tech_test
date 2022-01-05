require './lib/account'

describe Account do
    it 'expects balance of a new account to be 0' do
        test_account = Account.new
        expect(test_account.balance).to eq(0)
    end

    it 'allows a deposit' do
        test_account = Account.new
        test_account.deposit(500)
        expect(test_account.balance).to eq(500)
    end
    
end