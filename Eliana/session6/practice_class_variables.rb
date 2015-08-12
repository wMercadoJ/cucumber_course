class Polygon
	@@sides = 10
	def self.sides # initialize
		@@sides
	end
end

puts Polygon.sides

class Triangle < Polygon # Herencia simple
	@@sides = 3
end

puts Triangle.sides
puts Polygon.sides

class Rectangle < Polygon # Herencia simple
	@@sides = 4
end

puts Triangle.sides
puts Rectangle.sides
puts Polygon.sides