class Transaction
    attr_reader :date, :credit, :debit, :balance
  
    def initialize(date = Time.new.strftime("%d/%m/%y"), credit, debit, balance)
      @debit = debit
      @credit = credit
      @date = date
      @balance = balance
    end
  
    
  end