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
    format_debit(amount)
end

def withdraw(amount)
    decrement_balance(amount)
    format_credit(amount)
end

private

def format_credit(amount)
    @transaction.new(0, amount, @balance)
end

def format_debit(amount)
    @transaction.new(amount, 0, @balance)
end

def format_debit(amount)

end



def increment_balance(amount)
    @balance += amount
end

def decrement_balance(amount)
    @balance -= amount
end


end
