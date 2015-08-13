=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/10/2015
Description: - Class and Variables
			practica day 6
=end

=begin
Examples in class
- Global Variables
- Instance class
- 
=end


=begin
Practice:
Create a ruby class with 2 methods
1. Calculate and print the area of a circle --> area = radius * 2 * PI
2. Calculate the perimeter of a circle--> perimeter = radius * radius * PI	
=end

class Circle
	def initialize (circle_radius)
		@radius = circle_radius.to_i
	end
	def calculare_and_print_area()
		@area = '%.2f' % (@radius * 2 * Math::PI)
		puts "The radius of the Circle: #{@area}"
	end
	def calculate_and_print_perimeter()
		@perimeter = '%.2f' % (@radius * @radius * Math::PI)
		puts "The perimeter of the Circle: #{@perimeter}"
	end
end

circle = Circle.new(67)
circle.calculare_and_print_area()
circle.calculate_and_print_perimeter()


=begin
Practice:
Create a Class named Father
1. Father should have some amount of money
2. Add 3 differents child clasess that are going to take some of the money
3. Print the amount that each Child is taking
4. Print the amount of money that father have at the end	
=end

class Father
	@@money = 100
	def initialize(father_name, amount_of_money)
		@name = father_name.to_s
		@@money = amount_of_money.to_f
	end
	def print_current_amount_of_money()
		puts "The current amount of money for Father #{@name} is #{@@money.round(2)}"
	end
end

class Child < Father
	def initialize(child_name)
		@name = child_name
		@child_money = 0
	end
	def take_some_of_the_money_from_father(amount)
		@child_money = @child_money + amount.to_f
		@@money = @@money - amount
	end
	def print_amount_of_child_is_taking_from_father()
		puts "The Child #{@name} has taking : #{@child_money}"
	end
end

father01 = Father.new("Fernando", 1500.34)
father01.print_current_amount_of_money()
child01 = Child.new("Fer Jr")
child02 = Child.new("Paola")
child03 = Child.new("Daniel")
child01.take_some_of_the_money_from_father(23)
child01.print_amount_of_child_is_taking_from_father()
child01.take_some_of_the_money_from_father(50)
child01.print_amount_of_child_is_taking_from_father()
child02.take_some_of_the_money_from_father(150)
child02.print_amount_of_child_is_taking_from_father()
child03.take_some_of_the_money_from_father(1000)
child03.print_amount_of_child_is_taking_from_father()
father01.print_current_amount_of_money()