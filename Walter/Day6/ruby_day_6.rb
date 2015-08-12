##
puts
puts "::::::::::::::::: P1 - P3: Calculate Area "
##

class Circle 
	def initialize(radius)		
		@circle_radius = radius.to_i
	end

	def calculate_area		
		@area = '%.2f' % (@circle_radius * 2 * Math::PI)		
	end

	def calculate_perimeter	
		'%.2f' % (@circle_radius * @circle_radius * Math::PI)		
	end

	def display_area_and_perimeter
		return calculate_area,calculate_perimeter
	end

end

puts "Introduce a radius of a circle to calculate a Area and Perimeter of this:"
radius = gets.chomp
circle = Circle.new(radius)

#circle.calculate_area
#circle.calculate_perimeter
area,perimeter = circle.display_area_and_perimeter
puts "Area: #{area} and Perimeter: #{perimeter}, using a method that returns 2 Instance Variables"

##
puts
puts "::::::::::::::::: P2: Local Variables "
##

def test_local_variables
	value = 5 
	another_value = 10
	addition_of_values = value + another_value
	puts addition_of_values
	puts local_variables
end

test_local_variables
#puts value


##
puts
puts "::::::::::::::::: P4: Variables "
##

$global_variable = 10

module ModuleTest
	puts "Inside Module"
	puts $global_variable
end

def method_test
	puts "Inside Method"
	puts $global_variable
end

class Test_variable
	puts "Inside Class"
	puts $global_variable	
end

method_test
puts "Inside TopLevel"
puts $global_variable

puts global_variables.include? :$global_variable

