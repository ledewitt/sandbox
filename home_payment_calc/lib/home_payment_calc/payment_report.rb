module HomePaymentCalculator
  class Payment_Report
    include Enumerable
    
    def initialize(calculator)
      @calculator=calculator
    end
    
    attr_reader :calculator
    
    def monthly_payment(month)
      interest, principle = calculator.interest_and_principle_for_month(month)
    end
    
    def each
      (1..calculator.months).each do |month|
        yield monthly_payment(month)
        #following code to be deleted 
    end
    
  end
end