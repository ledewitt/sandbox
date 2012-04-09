module HomePaymentCalculator
  class Calculator
    
    def initialize
      
      puts "Enter the principle loan amount: "
      @principle = gets.strip
      
      puts"Enter the annual interest rate: "
      @annual_rate = gets.strip
      
      puts "Enter the length of the loan in years: "
      @years = gets.strip
      
    end
  
  
    def start
      puts "You Entered: Principle - #{@principle}, Annual Rate - #{@annual_rate}, Years - #{@years}"
      # new.calculate(@principle, @annual_rate, @years)
    end
  
  end 
end