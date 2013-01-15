module PointCount
  class Deck
    
    def initialize
      @deck = [ ]
      open(File.join(File.dirname(__FILE__), *%w[.. .. data suits.dat])) do |f|
        f.each do |suit|
          open(File.join(File.dirname(__FILE__), *%w[.. .. data ranks.dat])) do |g|
            g.each do |rank|
              @deck << [rank.strip, suit.strip]
            end
          end
        end
      end
      p @deck
    end
  
    def talk
      "Sorry I can't do that Dave!"
    end
  
  end
end