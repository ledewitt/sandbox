require "home_payment_calc/calculator"
require "home_payment_calc/calculate"

describe HomePaymentCalculator::Calculator do
  let(:calc) { HomePaymentCalculator::Calculate.new(250_000, 0.05, 30) }
  let(:delta) { 0.00001 }
  let(:money_delta) { 0.01 }
  
  it "calculates monthly interest" do
    calc.monthly_int_rate.should be_within(delta).of(0.00416667)
  end
  
  it "calculates twice monthly interest" do
    calc.twice_monthly_int_rate.should be_within(delta).of(0.00208333)
  end

  it "calculates biweekly interest" do
    calc.biweekly_int_rate.should be_within(delta).of(0.0019230769)
  end
  
  it "calculates monthly payment" do
    calc.monthly_payment.should be_within(money_delta).of(1342.05)
  end
  
  it "calculates biweekly payment" do
    calc.biweekly_payment.should be_within(money_delta).of(619.11)
  end  
end