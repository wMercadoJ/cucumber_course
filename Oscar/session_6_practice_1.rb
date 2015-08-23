class Circle

  PI = 3.1416

  def initialize(radius)
    @radius = radius
  end

  def area()
    @radius * 2 * PI

  end

  def perimeter()
    @radius * @radius * PI
  end

end

cir = Circle.new(4)
puts cir.area
puts cir.perimeter