require 'singleton'

class Registration
	
	include Singleton

	attr_accessor:user_name
	attr_accessor:id
	attr_accessor:persons
	attr_accessor:amount_user
	attr_accessor:option_person

	def initialize()
		@user_name="null"
		@id="null"
		@persons=Hash.new
		@amount_user=0;
		@option_person=Hash.new
	end
	 
	def read_user_name_and_id
		
		p "enter user name value"
		@user_name=gets.chomp

		if @user_name =~ /^[\w]{1,9}$/
	 		p "the user name format is correctly : #{@user_name}"
	 		p "enter id value"
			@id=gets.chomp
		 		if @id =~ /^[a-z0-9]+$/
			 		p "the id format is correctly : #{@id}"
			 		@persons[@id]=@user_name
		 		else
		 			p "the id has incorrect format"
		 		end
	 	else
	 		p "the user name has incorrect format"
	 	end
	end

	def read_amount_user
		p "enter amount user value"
		amount=gets.chomp.to_i
		if amount>=3 && amount<=15
			p "correct amount"
			@amount_user=amount
		end
	end

	def read_convertion_type

		@persons.each_with_index  do|(key,value),index| 
			#p "name : #{@name[key].upcase} , position : #{index}"
			p "enter convertion type"
			p "a) From minutes to hours"
			p "b) From hours to days"
			p "c) From day to month"
			option=gets.chomp
			p "option selected by the user #{@persons[value]}: #{option}"
			user=@persons[value]
			@option_person[user]=option
		end
		return @option_person
	end

	def calculate (optionValue)
		
		@option_person.each_with_index  do|(key,value),index| 
  			
		case @option_person[key]
			when "a"
			  p	"Insert the value in minutes"
			  minutes=gets.chomp.to_f
			  p "minutes : #{minutes} to hours : #{minutes/60.0}"
			when "b"
			  p	"Insert the value in hours"
			  hours=gets.chomp.to_f
			  p "hours : #{hours} to days : #{hours/24.0}"
			when "c"
			  p	"Insert the value in days"
			  days=gets.chomp.to_f
			  p "days : #{days} to month : #{days/30.0}"
			else
			  puts "incorrect option."
			end
		end
	end
end

person1 = Registration.instance
person1.read_user_name_and_id
p person1.persons
person1.read_amount_user
person1.calculate person1.read_convertion_type
