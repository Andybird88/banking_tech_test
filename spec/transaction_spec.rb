# frozen_string_literal: true

require './lib/transaction'

describe Transaction do
    it 'can store a single transactions data' do
        test_transaction = Transaction.create("01/01/2023", 0, 10, 10)
        expect(test_transaction.date).to be("01/01/2023")
        expect(test_transaction.credit).to eq(0)
        expect(test_transaction.debit).to eq(10)
        expect(test_transaction.balance).to eq(10)
    end
end