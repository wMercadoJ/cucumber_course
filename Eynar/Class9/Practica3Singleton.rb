require 'singleton'

class Person
	include Singleton
	attr_accessor:persons
	attr_accessor:user


	def initialize()
		@user="Guest"
		@message="Welcome to city"
		@visitor=0
		@persons=Hash.new
	end

	def print_person
		p "user #{@user} message #{@message} visitor #{@visitor}"
	end	

	def add_user
		p "add user "
		@user=gets.chomp
	end

	def add_welcome_message
		p "add message"
		@message=gets.chomp
	end

	def increment_visitors_amount
		
		@visitor=@visitor+1
		p "increment visitor #{@visitor}"
	end

	def save_all_user_and_message
		@persons[@user]=@message
	end
end



person1 = Person.instance
person1.print_person

person1.add_user
person1.add_welcome_message
person1.increment_visitors_amount

person1.save_all_user_and_message

person1.add_user
person1.add_welcome_message
person1.increment_visitors_amount

person1.save_all_user_and_message

p "the list person : #{person1.persons}"
p "Last user: #{person1.user}"

# the singleton patter is to use better the memory, we have optimized the use of memory.