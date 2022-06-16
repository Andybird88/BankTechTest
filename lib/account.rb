require './lib/statement'

class Account

    attr_reader :balance, :statement

def initialize(statement = Statement.new, transaction = Transaction)
    @transactions = []
    @transaction = transaction
    @statement = statement
    @balance = 0
end

def deposit(amount)
    @balance += amount
end

def withdraw(amount)
    @balance -= amount
end

end
