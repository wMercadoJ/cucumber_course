class Person
	attr_accessor :name
	attr_accessor :name2

	def initialize()
		@name = name
	end

	def person_greet
		puts "Hi #{@name}"
	end

	def person_greet2
		puts "#{@name2} Have a nice day."
	end


end

person = Person.new()
puts person.name = "Alex"
person.person_greet
puts person.name2 = "Daniel"
person.person_greet2