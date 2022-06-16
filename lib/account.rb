require './lib/statement'

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
end

def withdraw(amount)
    decrement_balance(amount)
end

def increment_balance(amount)
    @balance += amount
end

def decrement_balance(amount)
    @balance -= amount
end


end
