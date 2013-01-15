require_relative "./card"

module PointCount
  class Deck
    
    def initialize
      @deck = [ ]
      open(File.join(File.dirname(__FILE__), *%w[.. .. data suits.dat])) do |f|
        f.each do |suit|
          open(File.join(File.dirname(__FILE__), *%w[.. .. data ranks.dat])) do |g|
            g.each do |rank|
              card = PointCount::Card.new(suit,rank)
              @deck << card
            end
          end
        end
      end
      # p @deck
    end
    
    # def display_card (card)
    #   card.join(" ")
    # end
    
    def random_card
      # @deck[1].rank
      size = @deck.size
      "#{@deck[rand(size)].rank.strip} #{@deck[rand(size)].suit.strip}"
    end
    
    def talk
      "Sorry I can't do that Dave!"
    end
  
  end
end