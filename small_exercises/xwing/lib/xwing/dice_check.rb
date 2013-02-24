module Xwing
  class DiceCheck
    
    def initialize
      @dice          = Dice.new
      @attack_array  = [ ]
      @defence_array = [ ] 
    end
    
    def attack
      puts @dice.attack
    end
    
    def defend
      puts @dice.defend
    end
    
    def simulation
      puts "Number of trials?"
      trials = Integer(gets) rescue 1
      
      @attack_array = @dice.attack(trials)
      @defence_array = @dice.defend(trials)
      
      puts "#{@attack_array}"
      puts "#{@defence_array}"
      
      evaluate(trials)
      
      # puts @attack_array
      # puts @defence_array
    end
    
    def evaluate(trials)
      hit_count = @attack_array.count{ |r| r=="hit" || r=="crit" }
      evade_count = @defence_array.count("evade")
      
      puts "Total hits - #{hit_count}"
      puts "Total evades - #{evade_count}"
      puts "Nuber of trials - #{trials}"
      
      hit_perc = hit_count/trials.to_f
      evade_perc = evade_count/trials.to_f
      
      puts "Hit percentage = #{hit_perc}"
      puts "Evade percentage = #{evade_perc}"
    end
    
  end
end