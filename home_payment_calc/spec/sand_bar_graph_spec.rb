require "home_payment_calc/sand_bar_graph"

describe HomePaymentCalculator::SandBarGraph do
  let(:calc)  { stub( interest_and_principle_for_month: [30, 70],
                      months:                           3 ) }
  let(:graph) { HomePaymentCalculator::SandBarGraph.new(calc, 100) }
  
  it "renders interest and principle by month" do
    graph.bar_for_month(1).should eq("#{'i' * 30}#{'p' * 70}")
  end
  
  it "can iterate over the bars" do
    months = calc.months
    graph.each do |bar|
      months -= 1
    end
    months.should eq(0)
  end
end