require "home_payment_calc/calculator"

describe HomePaymentCalculator::Calculator do
  let(:calc) { HomePaymentCalculator::Calculate.new(250_000, 0.05, 30) }
  let(:delta) { 0.00001 }
  
  it "calculates monthly interest" do
    calc.monthly_interest.should be_within(delta).of(0.00416667)
  end
  
  it "calculates twice monthly interest" do
    twice_monthly_int_rate.should be_within(delta).of(0.00208333)
  end

  it "calculates biweekly interest" do
    calc.biweekly_interest.should be_within(delta).of(0.00173077)
  end
end