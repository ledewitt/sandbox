module Xwing
  class HitCalc
    
    def initialize

    end

    def event
      attack
      while response = gets.strip
        puts "Do you want another attack roll? Y/N"
        interpret(response)
      end
    end

    def interpret(response)
      case response
      when 'N','n'
        exit
      when 'Y','y'
        puts "Blasted Biggs where are you?"
      else
        puts "The force will be with you always, I just don't understand the command!"
      end
    end

    def attack
      puts "Set up for your attack run."
    end

  end
end
