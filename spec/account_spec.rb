require './lib/account'

describe Account do
    it 'expects an account to have a balance' do
        test_account = Account.new
        expect(test_account.balance).to be_a(Integer)
    
    end

    it 'expects a new account to have a 0 balance' do
        test_account = Account.new
        expect(test_account.balance).to eq(0)
    end

end