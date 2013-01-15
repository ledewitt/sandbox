module DeckBuilder
  class Deck
    
    def initialize(size = 52)
      @deck = Hash.new()
      deck(size)
      @deck.each { |key, value| puts "#{key} #{value}"}
    end
    
    def deck(size)
      
      # { "greeting" => "hello" }
      (1..size).each do |card|
        @deck[card] = "hello"
      end
      
    end
  end
end