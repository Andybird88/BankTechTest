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

    it 'expects to print a statement containing all transactions' do
        test_account = Account.new
        test_account.deposit(50)
        test_account.withdraw(20)
        test_account.deposit(500)
        expect{ test_account.account_statement }.to output(
            "date || credit || debit || balance\n16/06/22 || 500.00 ||  || 530.00\n16/06/22 ||  || 20.00 || 30.00\n16/06/22 || 50.00 ||  || 50.00\n").to_stdout
    end

end

