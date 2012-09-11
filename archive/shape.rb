class Triangle
  def self.area(height,width)
    area = 0.5 * height * width
  end
end

class Rectangle
  def self.area(height,width)
    area = height * width
  end
end

class Shape
  
  def initialize (height,width)
    @height = height
    @width = width
  end
  
  attr_reader :height, :width
  
  def area(height,width)
    # Don't know if the shape is triangle or rectange want to call both area functions
    triangle_area = Triangle.area(height,width)
    puts "Triangle Area = #{triangle_area}"
    rectangle_area = Rectangle.area(height,width)
    puts "Rectangle Area = #{rectangle_area}"
  end
    
end

n = Shape.new(3,4)

puts n.height
puts n.width

n.area(n.height,n.width)