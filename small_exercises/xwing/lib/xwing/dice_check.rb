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
    
  end
end