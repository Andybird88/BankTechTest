require './lib/statement'
require './lib/transaction'

class Account

    attr_reader :balance, :statement, :transactions

def initialize(statement = Statement.new, transaction = Transaction)
    @transactions = []
    @transaction = transaction
    @statement = statement
    @balance = 0
end

def deposit(amount)
    increment_balance(amount)
    credit = format_debit(amount)
    log(credit)
end

def withdraw(amount)
    raise "Insufficent funds" unless @balance > amount
    decrement_balance(amount)
    debit = format_credit(amount)
    log(debit)
end

def account_statement
    @statement.print(@transactions)
end

private

def format_credit(amount)
    @transaction.new(0, amount, @balance)
end

def format_debit(amount)
    @transaction.new(amount, 0, @balance)
end

def increment_balance(amount)
    @balance += amount
end

def decrement_balance(amount)
    @balance -= amount
end

def log(transaction)
    @transactions << transaction
end

end
