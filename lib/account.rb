# frozen_string_literal: true
require './lib/statement'
require './lib/transaction'
class Account
  

  def initialize(statement = Statement.new, new_transaction = Transaction)
    @recorded_transactions = []
    @statement = statement
    @new_transaction = new_transaction
    @balance = 0
  end

  def deposit(num, date)
   @balance += num
   @recorded_transactions << @new_transaction.create(date, num, 0, @balance)
   
   return "thank you for your deposit"
   

  end

  def withdraw(num, date)
    @balance -= num
    @recorded_transactions << @new_transaction.create(date, 0, num, @balance)
   
    return "Thank you for your withdrawal"
  end

  def print_statement
    @statement.print(@recorded_transactions)
    
  end

  def balance
    @balance
  end
  

  
end
