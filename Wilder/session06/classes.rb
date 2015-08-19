class Calculator
	PI = Math::PI
	def getCircleArea (radius)
		radius * 2 * PI
	end 	
	def getCirclePerimeter (radius)
		radius * radius * PI
	end 	
end
calc = Calculator.new
puts "enter circle radius"
radius = gets.chomp.to_f
puts "circle area for radious #{radius}: " + calc.getCircleArea(radius).to_s
puts "circle perimeter for radious #{radius}: " + calc.getCirclePerimeter(radius).to_s

#Local Variables
def test_local_variables
	value1 = 5
	value2 = 10
	addition = value1 + value2
	puts addition
	puts local_variables
end
test_local_variables
#prints error
#puts value1

#Instance Variables
class Customer
	def initialize(id, name, address)
		@cus_id = id
		@cus_name = name
		@cus_address = address		
	end
	def display_details
		puts "*********************"
		puts "customer id: #{@cus_id}"
		puts "customer name: #{@cus_name}"
		puts "customer address: #{@cus_address}"
	end
end

cus1 = Customer.new("1", "wil", "america")
cus2 = Customer.new("2", "carmi", "melchor")
cus1.display_details
cus2.display_details

#Global Variables
$global = 6
module Module_Test
	puts "inside module"
	puts $global
end

def method_test
	puts "inside method"
	puts $global
end

class Class_Test
	puts "inside class"
	puts $global
end

method_test
puts "inside toplevel"
puts $global
puts global_variables.include? :$global

#Class Variables
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

class Rectangle < Polygon
	@@sides = 4
end
puts Rectangle.sides
puts Polygon.sides

#Practice
class Father
    @@money = 500
    def print_money
        puts "father has " + @@money.to_s
    end
end
class Child1 < Father
	def take_money
        puts "child1 takes 50"
        @@money = @@money - 50        
    end
end
class Child2 < Father
	def take_money
        puts "child2 takes 100"
        @@money = @@money - 100
    end
end
class Child3 < Father
	def take_money
        puts "child3 takes 150"
        @@money = @@money - 150
    end
end

father = Father.new
child1 = Child1.new
child2 = Child2.new
child3 = Child3.new
father.print_money
child1.take_money
child2.take_money
child3.take_money
father.print_money