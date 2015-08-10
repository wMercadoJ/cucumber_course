class Calculate
	PI = 3.14159
	def calculateArea(radius)
		radius * 2 * PI
	end

	def calculatePerimeter(radius)
		return radius * radius * PI
	end
end

print "Radius:"
radius = gets.chomp.to_f
c = Calculate.new
puts "Area = #{c.calculateArea(radius)}"
puts "Perimeter = #{c.calculatePerimeter(radius)}"
