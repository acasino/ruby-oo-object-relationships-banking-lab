class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000 #always start with 1000 balance
        @status = "open" #always start with status of 'open'
    end

    def deposit(money)
        @balance += money
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if @status == "open" && @balance > 0
            true
        else
            false
        end
    end

    def close_account
        @status = "closed"
    end

end
