# frozen_string_literal: true

require './lib/account'
# Statement class
class Statement
  
  def print(transactions)
    @transactions = transactions
    puts(title + format_transactions)
  end

  def title
    "date || credit || debit || balance\n"
  end

  private

  def format_transactions
    result = @transactions.reverse.map do |transaction|
      "#{transaction.date} || #{format(transaction.credit)} || "\
      "#{format(transaction.debit)} || #{format(transaction.current_balance)}\n"
    end
    result.join('')
  end

  def format(number)
    number.zero? ? '' : '%.2f' % number
  end
end
