require './lib/statement'
require './lib/transaction'



describe Statement do
    it 'expects statement to have title/headers' do
        test_statement = Statement.new
        expect(test_statement.title).to eq("date || credit || debit || balance\n")
    end

    




end