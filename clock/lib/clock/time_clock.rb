require_relative 'time_card.rb'

module Clock
  class TimeClock
    
    def initialize(user)
      @user = user
      @time_card = Clock::TimeCard.new
      p "I have #{@user}"
    end
    
    attr_reader :user
    
    def format_time(t)
      t.strftime("%I:%M%P")
    end
    
    def format_date(t)
      t.strftime("%m/%d/%Y")
    end
    
    def punch_in
      Time.now
      # Write to the time card should I pass in project here?
    end
    
    def punch_out
      
    end
    
  end
end