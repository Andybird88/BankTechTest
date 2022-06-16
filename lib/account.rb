require './lib/statement'

class Account

    attr_reader :balance, :statement

def initialize(statement = Statement.new)
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
