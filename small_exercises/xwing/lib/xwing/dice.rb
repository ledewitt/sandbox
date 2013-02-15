module Xwing
  class Dice

    attr_reader :attack_die, :defence_die

    def initialize
      @attack_die  = [ "blank", "blank", "focus", "focus", "hit", "hit", "hit", "crit" ]
      @defence_die = [ "blank", "blank", "blank", "evade", "evade", "evade", "foucs", "focus" ]
    end

    def attack(number_dice)
      @attack_die.sample(number_dice=1)      
    end

    def defend(number_dice)
      @defence_die.sample(number_dice=1)
    end

  end
end
