module HomePaymentCalculator
  class Calculate
  
  def initialize(principle, annual_rate, years)
    @principle = principle
    @months = years * 12
    @monthly_int_rate = annual_rate / 12
    @half_monthly_int_rate = @monthly_int_rate / 2
    @bi_weekly_rate = annual_rate / 26
    @remaining_principle = principle
    
    puts "Principle #{@principle}"
    puts "Months #{@months}"
    puts "Monthly Interest Rate #{@monthly_int_rate}"
    puts "Twice a month interest rate #{@half_monthly_int_rate}"
    puts "Biweekly interest rate #{@bi_weekly_rate}"
  end
  
  def monthly_payment_information
  
    colculated_payment = @principal * ( @monthly_int_rate / ( 1 - ((1 + @monthly_int_rate )**-@months)))
    calculated_monthly_interest = @monthly_int_rate * @remaining_principle
    calculated_monthly_principle = 42
    
  end
    
  def loans_remaining_principle
    
  end
    
  end
end