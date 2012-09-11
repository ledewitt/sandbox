module HomePaymentCalculator
  class SandBarGraph
    include Enumerable
    
    def initialize(calculator, bar_size)
      @calculator = calculator
      @bar_size   = bar_size
    end
    
    attr_reader :calculator, :bar_size
    
    def bar_for_month(month)
      interest, principle = calculator.interest_and_principle_for_month(month)
      total_amount        = (interest + principle).to_f
      percent_interest    = interest / total_amount
      bar_interest        = (bar_size * percent_interest).round
      bar_principle       = bar_size - bar_interest
      "#{'i' * bar_interest}#{'p' * bar_principle}"
    end
    
    def each
      (1..calculator.months).each do |month|
        yield bar_for_month(month)
      end
    end
  end
end