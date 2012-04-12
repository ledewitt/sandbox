module HomePaymentCalculator
  class Calculator
  
    def initialize(principle, annual_rate, years)
      @principle   = principle
      @annual_rate = annual_rate
      @years       = years
    end
  
    # Should be private only used by systems intialization.
    def months
      @years * 12
    end
  
    def num_biweekly_payments
      @years * 26
    end

    def monthly_int_rate
      @annual_rate / 12
    end
  
    def twice_monthly_int_rate
      monthly_int_rate / 2
    end
  
    def biweekly_int_rate
      @annual_rate / 26    
    end

    def monthly_payment
      @principle * ( monthly_int_rate /
                     ( 1 - ((1 + monthly_int_rate )**-months)))
    end
      
    def biweekly_payment
      @principle * ( biweekly_int_rate /
                     ( 1 - ((1 + biweekly_int_rate )**-num_biweekly_payments)))
    end

    # The payments
  
    def monthly_int_payment
      "Monthly_int_payment"
    end
    
    def interest_for_month(month)
      interest_and_principle_for_month(month).first
    end
  
    def monthy_prin_payment
      "Monthly_prin_payment"
    end
    
    def principle_for_month(month)
      interest_and_principle_for_month(month).last
    end
    
    def interest_and_principle_for_month(month)
      remaining_principle = @principle
      latest_interest     = nil
      latest_principle    = nil
      month.times do
        latest_interest      = remaining_principle * monthly_int_rate
        latest_principle     = monthly_payment - latest_interest
        remaining_principle -= latest_principle
      end
      [latest_interest, latest_principle]
    end
    
    def monthly_int_and_prin
      [monthly_int_payment, monthy_prin_payment]
    end
  
    # def twice_monthly_payment
    #     
    # end
   
    # def loans_remaining_principle
    #   
    # end

  end
end