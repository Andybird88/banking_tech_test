# frozen_string_literal: true

require './lib/statement'
require './lib/transaction'

describe Statement do
  test_transactions_list = [Transaction.new('10/01/2023', 1000, 0, 1000),
                            Transaction.new('13/01/2023', 2000, 0, 3000), Transaction.new('14/01/2023', 0, 500, 2500)]

  it 'formats statement with a title' do
    test_statement = Statement.new
    expect { test_statement.title }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'prints a correctly formated statement' do
    test_statement = Statement.new
    expect { test_statement.print(test_transactions_list) }.to output(
      "date || credit || debit || balance\n14/01/2023 || || 500.00 || 2500.00 \n13/01/2023 || 2000.00 || || 3000.00 \n10/01/2023 || 1000.00 || || 1000.00 \n"
    ).to_stdout
  end
end
