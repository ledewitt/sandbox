require "home_payment_calc/calculator"

describe HomePaymentCalculator::Calculator do
  let(:calc) { HomePaymentCalculator::Calculator.new(250_000, 0.05, 30) }
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
  
  it "knows the number of months" do
    calc.months.should eq(360)
  end
  
  it "calculates interest by month" do
    calc.interest_for_month(1).should  be_within(money_delta).of(1_041.67)
    calc.interest_for_month(2).should  be_within(money_delta).of(1_040.42)
    calc.interest_for_month(10).should be_within(money_delta).of(1_030.21)
  end
  
  # ...
end