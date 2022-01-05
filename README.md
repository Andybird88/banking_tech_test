
About the App
=============
1. To run the app open it up in irb.:
    - ( in terminal, within project main directory ) type: irb
2. Require the file ( require './lib/account' ) within irb.
3. Create a new account: 'your_account_name' = Account.new
4. Deposit funds to your account: 'your_account_name'.deposit( amount, date )
    - The amount is how much you want to deposit
    - The date is the date that you made the transaction
5. Withdraw funds from you account: 'your_account_name'.withdraw( amount, date )
6. View a statement of transactions: 'your_account_name'.statement
    - This will display a list of your recent transactions by date.



 Notes
=========

- Make sure to top up your account before withdrawing. You have an unlimited overdraft and bank charges aren't cheap.
- Time travel is not yet possible, when entering dates make sure transactions are in time order to simulate the real world.