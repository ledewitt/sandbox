module Xwing
  class HitCalc
    
    def initialize
      @dice          = Dice.new
      @attack_array  = [ ]
      @defence_array = [ ] 
    end

    def event
      attack
      while response = gets.strip
        interpret(response)
      end
    end

    def interpret(response)
      case response
      when 'N','n'
        exit
      when 'Y','y'
        attack
      when 'M'
        monte
      else
        puts "The force will be with you always, I just don't understand the command!"
      end
    end
    
    def monte
      
    end

    def attack
      puts "Number of attack dice?"
      attack_dice = Integer(gets) rescue 1
      puts "Number of defence dice?"
      defence_dice = Integer(gets) rescue 1
      
      @attack_array = @dice.attack(attack_dice)
      @defence_array = @dice.defend(defence_dice)
      
      puts "Attack Dice Results - #{@attack_array}"
      puts "Defence Dice Results - #{@defence_array}"
      
      evalute
      
      puts "Do you want another attack roll? Y/N"
    end
    
    def evalute
      hit_count = @attack_array.count{ |r| r=="hit" || r=="crit" }
      puts "Number of hits #{hit_count}"
      evade_count = @defence_array.count("evade")
      puts "Number of evades #{evade_count}"
      total_hits = hit_count - evade_count > 0 ? hit_count - evade_count : 0
      puts "Total hits taken #{total_hits}"
    end

  end
end
