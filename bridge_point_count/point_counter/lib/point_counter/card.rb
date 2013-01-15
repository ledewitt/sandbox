module PointCount
  class Card
   
   def initialize(suit, rank)
     @suit = suit
     @rank = rank
   end
    
  attr_reader :suit, :rank
  
  end
end