module HomePaymentCalculator
  class Calculator
    
    def initialize
      
      puts "Enter the principle loan amount: "
      @principle = gets.strip.to_f
            
      puts"Enter the annual interest rate: "
      @annual_rate = gets.strip.to_f
      
      puts "Enter the length of the loan in years: "
      @years = gets.strip.to_f
      
    end
  
  
    def start
      puts "You Entered: Principle - #{@principle}, Annual Rate - #{@annual_rate}, Years - #{@years}"
      bobs_loan = Calculate.new(@principle, @annual_rate, @years)
    end
  
  end 
end