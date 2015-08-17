class Conditional
	attr_accessor :name
	attr_accessor :age
	attr_reader :years_to_hours

	def initialize()
		@name = name
		@age = age
	end

	def calculate_years(age)
		if age < 35
			@years_to_hours = age * 24 * 365
		else
			print "Age cannot be calculated"
		end
	end

	def calculate_age(age)
		result =  age < 35  ?
					age >= 22 ? "You are adult" :
					age >= 13 ? "You are young people" : 
					age >= 6 ? "You are child" : "You are baby"
					#age >= 0 ? "You are baby" : ""
				: "Age cannot be calculated"
		puts result

	end
end

obj = Conditional.new()
obj.name = "Alex"
obj.age = 13
obj.calculate_years(obj.age)
obj.calculate_age(obj.age)
puts "Age in hours is: #{obj.years_to_hours}"