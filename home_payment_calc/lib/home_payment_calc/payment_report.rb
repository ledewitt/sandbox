module HomePaymentCalculator
  class Payment_Report
    
    def initialize
      @loan = Calculator.new(250000, 0.05, 30)
    end
    
    def monthly_payment
      puts "Monthly principle #{@loan.monthly_prin_payment}; Monthly interest #{@loan.monthly_int_payment}"
    end
  end
end