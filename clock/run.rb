require_relative 'lib/clock/time_clock.rb'
require_relative 'lib/clock/time_card.rb'

user = "ldewitt"

new_clock = Clock::TimeClock.new(user)

new_clock.punch_in