require './lib/account'

describe Account do
    it 'expects balance of a new account to be 0' do
        test_account = Account.new
        expect(test_account.balance).to eq(0)
    end
    
end