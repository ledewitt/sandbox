module HomePaymentCalculator
  class Calculate
  
  def initialize(principle, annual_rate, years)
    @principle = principle
    @months = years * 12
    @monthly_int_rate = annual_rate / 12
    @half_monthly_int_rate = @monthly_int_rate / 2
    @bi_weekly_rate = annual_rate / 26
    @remaining_principle = principle
    
    puts @principle
    puts @months
    puts @monthly_int_rate
    puts @half_monthly_int_rate
    puts @bi_weekly_rate
  end
  
  def monthly_payment_information
    colculated_payment = @principal * ( @monthly_int_rate / ( 1 - ((1 + @monthly_int_rate )**-@months)))
  end
  
  def monthly_interest
    calculated_monthly_interest = @monthly_int_rate * @remaining_principle
  end
  
  def monthly_principle
    calculated_monthly_principle = 
  end
  
  def loans_remaining_principle
    
  end
    
  end
end