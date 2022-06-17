# frozen_string_literal: true

require './lib/transaction'

describe Transaction do
  it 'expects a transacation to store the details of a given transaction' do
    test_transaction = Transaction.new(100,500,400,'06/06/22')
    expect(test_transaction.debit).to eq(500)
    expect(test_transaction.credit).to eq(100)
    expect(test_transaction.current_balance).to eq(400)
    expect(test_transaction.date).to eq('06/06/22')
  end
end
