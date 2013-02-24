module Xwing
  class Dice

    attr_reader :attack_die, :defence_die

    def initialize
      @attack_die  = [ "blank", "blank", "focus", "focus", "hit", "hit", "hit", "crit" ]
      @defence_die = [ "blank", "blank", "blank", "evade", "evade", "evade", "foucs", "focus" ]
    end

    def attack(number_dice=1)
      # @attack_die.sample(number_dice)
      result = [ ]
      
      number_dice.times do
        result << @attack_die.fetch(rand(@attack_die.count))
      end
      
      result
    end

    def defend(number_dice=1)
      # @defence_die.sample(number_dice)
      result = [ ]
      
      number_dice.times do
        result << @defence_die.fetch(rand(@defence_die.count))
      end
      
      result
    end

  end
end
