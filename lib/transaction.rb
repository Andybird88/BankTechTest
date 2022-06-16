class Transaction
    attr_reader :date, :credit, :debit, :current_balance
  
    def initialize(date = Time.new.strftime("%d/%m/%y"), credit, debit, balance)
      @debit = debit
      @credit = credit
      @date = date
      @current_balance = balance
    end
  
    
  end