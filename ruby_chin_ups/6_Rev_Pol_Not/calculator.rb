class Calculator
  
  def initialize
    @stack = [ ]
  end

  def addition
    @stack << @stack.pop + @stack.pop
  end
  
  def subtraction
    right = @stack.pop
    left  = @stack.pop
    @stack << left - right
  end

  def multiplication
    @stack << @stack.pop * @stack.pop
  end
  
  def division
    right = @stack.pop
    left  = @stack.pop
    @stack << left / right
  end

  def command(input)
    case input
    when "+"
      addition
    when "-"
      subtraction
    when "*"
      multiplication
    when "/"
      division
    else
      if input == "q"
        exit
      else
        @stack << input.to_f
      end
    end
    p @stack
  end
  
end

calculator = Calculator.new

while input = gets.strip 
  calculator.command(input)
end