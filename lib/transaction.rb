# frozen_string_literal: true

class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @debit = debit
    @credit = credit
    @date = date
    @balance = balance
  end

  def self.create(date, credit, debit, balance)
    Transaction.new(date, credit, debit, balance)
  end
end
