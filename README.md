
Install Dependencies
====================
If you pulled the project from github you will need to run 'bundle install' inside the main
project directory. This will install the relevent gems needed for the app to run.

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


Running Tests
=============

- To run the tests type 'rspec' in the terminal within the main project directory.

 Notes on use
=============

- Make sure to top up your account before withdrawing. You have an unlimited overdraft and bank charges aren't cheap.
- Time travel is not yet possible, when entering dates make sure transactions are in time order to simulate the real world.

Notes on high quality code
==========================

- TDD process used and 100% coverage acheived through tests
- SRP, have seperated out each function to its own method
- Only focus on requirements. Given the specification is basic. I chose not to overengineer this task. I have focused on delivering exactly what was asked for.
- DRY, Have elinmated any duplication I could find.
- Opening balance and statement printing can be changed easily.