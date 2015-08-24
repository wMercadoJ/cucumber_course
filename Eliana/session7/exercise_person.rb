class Person
	attr_writer :name_person
	attr_reader :greet_message
	attr_accessor :special_message

	def greet_person(greet_message)
		@greet_message = greet_message + @name_person
	end
end

person = Person.new
puts "Insert a name: "
person.name_person = gets.chomp.to_s

puts person.greet_person("Hi ") + person.special_message = " have a nice day :)"