=begin
This is the practice for statements
=end

class Practice2ControlStatements
	attr_accessor:name
	attr_accessor:age

	def initialize()
	end
	
	def calculate_years_in_hours()
		result= age<35?age*8760:"The age can not be calculated"
	end

	def print_greeting()
		p result= age>=0 && age<=5?"you are baby":age>=6 && age<=12?"you are a child":age>=13 && age<=21?"you are a young people":age>=22 && age<=35?"you are adult":calculate_years_in_hours
	end
end

practice=Practice2ControlStatements.new

puts "Read the name"
practice.name=gets.chomp

puts "Read age "
practice.age=gets.chomp.to_i

p "The age in hours is : #{practice.calculate_years_in_hours}"

practice.print_greeting