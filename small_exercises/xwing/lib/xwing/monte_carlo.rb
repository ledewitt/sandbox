module Xwing
  class MonteCarlo
    def initialize
      @dice          = Dice.new
      @attack_array  = [ ]
      @defence_array = [ ]
      @hits          = 0
      @crits         = 0
      @trials        = 0
    end
    
    def simulation
      puts "Number of attack dice?"
      attack_dice = Integer(gets) rescue 1
      puts "Number of defence dice?"
      defence_dice = Integer(gets) rescue 1
      puts "Number of trials?"
      @trials = Integer(gets) rescue 1
      
      @trials.times do
        @attack_array = @dice.attack(attack_dice)
        @defence_array = @dice.defend(defence_dice)
      
        puts "Attack Dice Results - #{@attack_array}"
        puts "Defence Dice Results - #{@defence_array}"
      
        evalute
      end
      
      average_hits = @hits/@trials.to_f
      
      puts "Total number of hits - #{@hits}"
      puts "Total number of trails - #{@trials}"
      puts "Average number of hits - #{average_hits}"
      
      puts "Do you want another attack roll? Y/N"      
    end
    
    def evalute
      hit_count = @attack_array.count{ |r| r=="hit" || r=="crit" }
      puts "Number of hits #{hit_count}"
      evade_count = @defence_array.count("evade")
      puts "Number of evades #{evade_count}"
      total_hits = [ hit_count - evade_count, 0 ].max
      puts "Total hits taken #{total_hits}"
      @hits += total_hits
    end
  end
end