module Clock
  class TimeClock
    
    def initialize(user)
      @user = user
      @time_card = Clock::TimeCard.new
      p "I have #{@user}"
    end
    
    def punch_in
      p "#{@user} punches in at #{Time.now}"
    end
    
    def punch_out
      
    end
    
  end
end