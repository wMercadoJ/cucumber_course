class Polygon
	@@sides=10
	def self.sides()
		@@sides
	end
end
puts Polygon.sides

class Triangule < Polygon
	@@sides=3
end

puts Triangule.sides
puts Polygon.sides

class Rectangule < Polygon
	@@sides=4
end

puts Polygon.sides