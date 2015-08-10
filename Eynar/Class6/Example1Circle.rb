=begin description
Example 1, create class and methods
=end

class Circle 

	PI=3.1416
	
	def initialize()
	end
	
	def get_area(radius_value)
		return radius_value.to_f*2*PI
	end

	def get_perimeter(radius_value)
		return radius_value.to_f*radius_value.to_f*PI
	end
end

radious=1
Practice1 = Circle.new
puts "Area : #{Practice1.get_area radious}"
puts "Perimeter: #{Practice1.get_perimeter radious}"