def convert_minutes_to_hours minutes
	hours = minutes / 60
	puts "#{minutes} Mins represent #{hours} Hours"
end

def convert_hours_to_days hours
	days = hours / 24
	puts "#{hours} Hours represent #{days} Days"
end

def convert_days_to_months days
	months = days / 31
	puts "#{days} Days represent #{months} Months"
end

class Registration
	attr_accessor :user_hash

	def initialize 
		@username = ''
		@id = '' 
		@user_hash = Hash.new
	end

	def add_username_id		
		puts "Introduce the username:"
		name = gets.chomp

		if name =~ /[a-z0-9]{,11}/
			puts "Introduce the ID of the user"
			id = gets.chomp.to_i
			
			@user_hash.store(name, id)
			
		else
			puts "You introduce a invalid username try again"
			update_username_id
		end		
	end

	def insert_users number
		case number
		when 0..2 then 
			puts "Unable to insert less that 3 users"    
		when 3..15 then 
			number.times do | value |
				add_username_id	
			end			
		else 
			puts "Unable to insert more that 16 users " 
		end
	end

	def type_conversion user_hash
		p array_users = user_hash.keys

		array_users.length.times do | value |
			puts "What kind of conversion do you want to do #{array_users[value]}?"
			puts "A) From minutes to hours"
			puts "B) From hours to days"
			puts "C) From days to months"
			option = gets.chomp.upcase

			puts results = option == "A" || option == "B" || option == "C" ? 
			calculate_conversion(option) : "You introduce and invalid option"				
		end		
	end

	def calculate_conversion option
		puts "Introduce the value that you want to convert:"
			value = gets.chomp.to_i

			puts results =  option == "A" ? convert_minutes_to_hours(value) :
			option == "B" ? convert_hours_to_days(value) : 
			option == "C" ? convert_days_to_months(value) 
	end
end

def singleton_exam
	@singleton_exam ||= Registration.new
end

puts "Introduce the number of users that you want to add"
number = gets.chomp.to_i

singleton_exam.insert_users number
user_hash = singleton_exam.user_hash
singleton_exam.type_conversion user_hash