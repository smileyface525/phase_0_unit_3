

# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

## Define #area 
# Return width times the height
## Define #perimeter 
# return 2*height + 2*width
##  define #diagonal
# Return (width**2 + height**2)**(0.5)
## Define #square
# Return true if width and the height are the same, false otherwise

# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
  
  def area
    @width * @height  
  end
  
  def perimeter
    @width*2 + @height*2
  end
  
  def diagonal
    Math.sqrt(@width**2 + @height**2)
  end
  
  def square?
    return true if @width == @height
  end
  
end


# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
  
  def area
    @width * @height  
  end
  
  def perimeter
    @width*2 + @height*2
  end
  
  def diagonal
    Math.sqrt(@width**2 + @height**2)
  end
  
  def square?
    @width == @height
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
square1 = Rectangle.new(5,5)
square2 = Rectangle.new(4,4)
def assert
  raise ArgumentError.new("Assertion Failed") unless yield
end 
assert{square1.area == 25}
assert{square1.perimeter == 20}
assert{square1.diagonal == Math.sqrt(50)}
assert{square1.==(square2) == false}
assert{square1.width > 0 && square1.height > 0}
assert{square1.square?}



# 5. Reflection 