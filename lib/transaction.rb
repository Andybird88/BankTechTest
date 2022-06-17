# frozen_string_literal: true

# Transaction class
class Transaction
  attr_reader :date, :credit, :debit, :current_balance

  def initialize(credit, debit, balance, date = Time.new.strftime('%d/%m/%y'))
    @debit = debit
    @credit = credit
    @date = date
    @current_balance = balance
  end
end
