module Conversion
	def minutes_to_hours(minute)
		minute / 60
	end
	def hours_to_day(hour)
		hour / 24
	end
	def days_to_month(day)
		day / 30 
	end
end

class Registration
	include Conversion
	attr_accessor :hash

	def initialize()
		@hash = hash
	end

	def register_user
		@hash = Hash.new
		user_number = ask_amount_of_users

		user_number.times do |i|
			puts "Enter the ID of the user: #{i+1}"
			id = gets.chomp
			puts "Enter the User name"
			name = gets.chomp
			hash[id] = name
			#if name = ~/^[a-z0-9_-]{0,11}$/
			#	hash[id] = name
			#end
		end
	end

	def ask_amount_of_users
		puts "Type the user number"
		begin			
			users = gets.chomp.to_i
			if users > 15
				puts "Too much users. Type a number lower or equal than 15"
			else users < 3
				puts "Type a number greater or equal than 3"
			end
		end while users > 15 or users < 3
		return users
	end

	def ask_method_for_user
		array_option = ["a) From minutes to hours", 
						"b) From hours to day",
						"c) From day to month"]
		options = Array.new
		hash.each_with_index do |(id, name), index|
			puts "User #{name} wants the option"
			options.push gets.chomp
		end
	end
end

obj = Registration.new
obj.register_user
obj.ask_method_for_user