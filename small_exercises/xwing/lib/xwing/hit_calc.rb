module Xwing
  class HitCalc
    
    def initialize
      @dice = Dice.new
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
      else
        puts "The force will be with you always, I just don't understand the command!"
      end
    end

    def attack
      puts "Number of attack dice?"
      attack_dice = Integer(gets) rescue 1
      puts "Number of defence dice?"
      defence_dice = Integer(gets) rescue 1
      # puts "Attack dice #{attack_dice}, Defence Dice #{defence_dice}"
      puts "Attack Result - #{@dice.attack(attack_dice)}"
      puts "Defence Result - #{@dice.defend(defence_dice)}"
      puts "Do you want another attack roll? Y/N"
    end

  end
end
