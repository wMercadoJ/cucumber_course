class Person
	attr_reader :name_person
	attr_writer :greet_person
	attr_accessor :special_message

	def initialize(greet_person)
		greet_person = greet_person
	end
end

person = Person.new("Hi")

puts greet_person