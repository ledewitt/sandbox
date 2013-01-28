module PointCount
  class Dealer
   
   attr_reader :north, :east, :south, :west
   
   def initialize
     @north = [ ]
     @east  = [ ]
     @south = [ ]
     @west  = [ ]
   end
   
   def riffle(deck)
     deck.shuffle
   end
   
   def deal(deck)
     @north = deck.pop(13)
     @east  = deck.pop(13)
     @south = deck.pop(13)
     @west  = deck.pop(13)
   end
    
  end
end