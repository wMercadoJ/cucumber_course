class PracticePerson
	
	attr_accessor:name
	attr_accessor:special_message

	def initialize()
	end
	
	def get_greet_person()
		p "Hi #{name}"	
	end

	def get_special_message()
		p "#{name} #{special_message}"
	end
	
end

item=PracticePerson.new

item.name="eynar"
item.special_message="have a nice day"

item.get_greet_person
item.get_special_message

