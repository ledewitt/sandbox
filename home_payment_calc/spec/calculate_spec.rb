require "home_payment_calc/calculator"
require "home_payment_calc/calculate"

describe HomePaymentCalculator::Calculator do
  let(:calc) { HomePaymentCalculator::Calculate.new(250_000, 0.05, 30) }
  let(:delta) { 0.00001 }
  
  it "calculates monthly interest" do
    calc.monthly_int_rate.should be_within(delta).of(0.00416667)
  end
  
  it "calculates twice monthly interest" do
    calc.twice_monthly_int_rate.should be_within(delta).of(0.00208333)
  end

  it "calculates biweekly interest" do
    calc.bi_weekly_rate.should be_within(delta).of(0.0019230769)
  end
end