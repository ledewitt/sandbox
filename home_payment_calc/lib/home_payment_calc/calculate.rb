module HomePaymentCalculator
  class Calculate
  
  def initialize(principle, annual_rate, years)
    @principle              = principle
    @annual_rate            = annual_rate
    @years                  = years
    @months                 = months
    @num_biweekly_payments  = num_biweekly_payments
    @monthly_int_rate       = monthly_int_rate
    @twice_monthly_int_rate = twice_monthly_int_rate
    @biweekly_int_rate      = biweekly_int_rate
    @remaining_principle    = @principle
    @monthly_payment        = monthly_payment
    @biweekly_payment       = biweekly_payment
    
    puts "Principle #{@principle}"
    puts "Months #{@months}"
    puts "Monthly Interest Rate #{@monthly_int_rate}"
    puts "Twice a month interest rate #{@twice_monthly_int_rate}"
    puts "Biweekly interest rate #{@biweekly_int_rate}"
    puts "Monthly payment is #{@monthly_payment}"
    puts "Monthly biweekly payment is #{@biweekly_payment}"    
  end
  
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
    @monthly_int_rate / 2
  end
  
  def biweekly_int_rate
    @annual_rate / 26    
  end

  def monthly_payment
    @principle * ( @monthly_int_rate / ( 1 - ((1 + @monthly_int_rate )**-@months)))
  end
      
  def biweekly_payment
    @principle * ( @biweekly_int_rate / ( 1 - ((1 + @biweekly_int_rate )**-@num_biweekly_payments)))
  end

  #   def twice_monthly_payment
  #     
  #   end

  
  # def monthly_payment_information
  # 
  #   colculated_payment = @principal * ( @monthly_int_rate / ( 1 - ((1 + @monthly_int_rate )**-@months)))
  #   calculated_monthly_interest = @monthly_int_rate * @remaining_principle
  #   calculated_monthly_principle = 42
  #   
  # end
  #   
  # def loans_remaining_principle
  #   
  # end
  #   
  end
end