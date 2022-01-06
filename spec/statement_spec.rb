# frozen_string_literal: true

require './lib/statement'

describe Statement do
    it 'format statement with a title' do
    test_statement = Statement.new
    expect(test_statement.title).to be("date || credit || debit || balance")
    end
end