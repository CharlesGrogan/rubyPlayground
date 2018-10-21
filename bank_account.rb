class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
    
    def display_balance(pin_number)
      puts pin_number == pin ? "Balance: #{@balance}." : "#{pin_error}"
    end
    
    def withdraw(pin_number, amount)
      puts pin_number == pin ? "Withdrew #{amount}. New balance: $#{@balance}." : "#{pin_error}"
      @balance -= amount
    end
   
    private
    
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
  print pin_error
    end
  end
  
  checking_account = Account.new("Charlie", 500_000_000)