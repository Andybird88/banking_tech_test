# frozen_string_literal: true

require './lib/account'
class Statement
  def title
    puts 'date || credit || debit || balance'
  end

  def format_statement(recorded_transactions)
    recorded_transactions.reverse.map { |transaction| format_transaction(transaction) }
  end

  def format_transaction(transaction)
    puts "#{transaction.date} "\
    "|| #{format_amount(transaction.credit)}"\
    "|| #{format_amount(transaction.debit)}"\
    "|| #{format_amount(transaction.balance)}"
  end

  def format_amount(num)
    if num.zero?
      ''
    else
      "#{'%.2f' % num} "
    end
  end

  def print(recorded_transactions)
    title
    format_statement(recorded_transactions)
    'Please see your recent statement above'
  end
end
