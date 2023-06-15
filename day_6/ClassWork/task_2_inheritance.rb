# "Write a program that has Shape class with method area.
# Circle and Rectangle inherits the Shape class.
# Circle can be initialised with radius and rectangle can be initialised with length and breadth.
#
# Both circle and rectangle objects should display correct areas."

class Shape
  def area
  end
end

class Circle < Shape
  attr_accessor :radius
  attr_reader :pi
  def initialize(radius)
    @radius = radius
    @pi = 3.14
  end

  def area
    pi * (radius ** 2)
  end
end

class Rectangle < Shape
  attr_accessor :length,:breadth
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def area
    length * breadth
  end
end

rectangle = Rectangle.new(10,5)
puts rectangle.area

circle = Circle.new(5)
puts circle.area