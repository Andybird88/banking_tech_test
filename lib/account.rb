class Account
    attr_reader :balance
  
    def initialize
        @balance = 0
        @statement_data = []
      end
    
      def deposit(num, date)
        @balance += num
        @statement_data << [date, num, ' ||      ', @balance]
      end
    
      def withdraw(num, date)
        @balance -= num
        @statement_data << [date, '      || ', num, @balance]
      end
    
      def statement
        puts '    Date   ||  Credit ||  Debit   || Balance '
        @statement_data.each do |transaction|
          puts " #{transaction[0]}||   #{transaction[1]}  #{transaction[2]}    || #{transaction[3]}  "
        end
      end


  
end