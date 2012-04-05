module HomePaymentCalculator
  class Calculator
    
    def initialize
      
      puts "Enter the loan amount: "
      @loan = gets.strip
      
      puts"Enter the interest rate: "
      @rate = gets.strip
      
      puts "Enter the length of the loan in months: "
      @months = gets.strip
      
    end
  end
  
  def start
    puts "You Entered: Loan - #{@loan}, Rate - #{@rate}, Months - #{@months}"
  end
    
end