class TestClock
  def initialize (time)
    @time = time
  end
  
  def self.now
    new
  end
  
  # def strftime(format)
  #   Time.utc(2012, ...).strftime(format)
  # end
end

# clock = TestClock.new(Time)
# 
# puts clock
# 
# puts clock.now