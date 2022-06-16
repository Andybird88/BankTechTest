require './lib/account'

class Statement

    

    def print(transactions)
        @transactions = transactions
        puts (title + format_transactions)
    end
    
    def title
      "date || credit || debit || balance\n"
    end

    def format_transactions
        result = @transactions.reverse.map do |transaction|
            "#{transaction.date} || #{format(transaction.credit)} || "\
            "#{format(transaction.debit)} || #{format(transaction.current_balance)}\n"
        end
        result.join("")
    end

    def format(number)
        number == 0 ? "" : '%.2f' % number
    end

end
