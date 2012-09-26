require_relative 'lib/clock/time_clock.rb'

user = "ldewitt"

clock = Clock::TimeClock.new(user)

t = clock.punch_in

p "#{clock.user} checked in at #{clock.format_time(t)} on #{clock.format_date(t)}"

epoch = t.to_i

p t

p Time.at(epoch)

p "#{epoch}"