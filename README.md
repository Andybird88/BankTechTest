# BankTechTest

### Specifaction Requirements
  * You should be able to interact with your code via a REPL like IRB or Node. (You don't nned to implement a command line interface that takes input from STDIN )
  * Deposits, withdrawal
  * Account statement (date, amount, balance) printing
  * Data can be kept in memory (it doesn't need to be stored in a database)

### Acceptance Criteria

* Given a client makes a deposit of 1000 on 10-01-2022
* And a deposit of 2000 on 13-01-2022
* And a withdrawal of 500 on 14-01-2022
* When they print their bank statement then they would see:

```
date || credit || debit || balance
14/01/2022 || ||500.00  || 2500.00
13/01/2022 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00

```

Install Dependencies
====================
If you pulled the project from github you will need to run 
```
bundle install
``` 
inside the main project directory. This will install the relevent gems needed for the app to run.

About the App
=============
1. To run the app open it up in irb.:
    - ( in terminal, within project main directory ) type: irb
2. Require the file within irb.
```
require './lib/account'  
```
3. Create a new account: 
```
'your_account_name' = Account.new
```
4. Deposit funds to your account: 
```
'your_account_name'.deposit( amount )
```
- The amount is how much you want to deposit
- The date is the date that you made the transaction
5. Withdraw funds from you account: 
```
'your_account_name'.withdraw( amount )
```
6. View a statement of transactions: 
```
'your_account_name'.account_statement
```

- This will display a list of your recent transactions by date.


Running Tests
=============

- To run the tests type 'rspec' in the terminal within the main project directory.



