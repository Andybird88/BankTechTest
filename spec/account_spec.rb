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

    it 'expects a deposit to increase the account balance by stated amount' do
        test_account = Account.new
        test_account.deposit(100)
        expect(test_account.balance).to eq (100)
    end

    it 'expects a withdrawl to decrease the account balance by stated amount' do
        test_account = Account.new
        test_account.withdraw(50)
        expect(test_account.balance).to eq (-50)
    end

end