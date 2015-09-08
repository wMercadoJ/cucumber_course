# Create a script - Ruby Variables
# August 10, 2015
# see some examples below:

# Class variables
class Polygon
	@@sides = 10
	def self.sides
		@@sides
	end

end

puts Polygon.sides

class Triangle < Polygon
	@@sides = 3
end

puts Triangle.sides
puts Polygon.sides

class Retangle < Polygon
	@@sides = 4
end

puts Polygon.sides