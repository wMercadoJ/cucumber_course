
module TimeConversion
	DAY_HOURS = 24
	HOUR_MINUTES = 60
	DAYS_OF_MONTH = 30
	def TimeConversion.minutes_to_hours()
		print "Introduce Minutes:"
		minutes = gets.chomp().to_i
		minutes_to_hour = (minutes.to_i)/HOUR_MINUTES
	end
	def TimeConversion.hours_to_day()
		print "Introduce hours:"
		hours = gets.chomp().to_i
		hours_to_day = hours.to_i / DAY_HOURS
	end
	def TimeConversion.days_to_month()
		print "Introduce days"
		days = gets.chomp().to_i
		days_to_month = days.to_i / DAYS_OF_MONTH
	end

end

# p TimeConversion.minutes_to_hours(60)
# p TimeConversion.hours_to_day(24)
# p TimeConversion.days_to_month(30)
	

require 'singleton'

class Registration
	include Singleton
	include TimeConversion
	attr_reader :hash_users_register
	def initialize ()
		@hash_users_register = Hash.new()
	end
	def validate_name(name)
		return name =~ /^[a-z0-9]{0,10}$/
	end	
	def register_user()
		puts "UserName: "
		name = gets.chomp()
		puts "ID: "
		id = gets.chomp()
		if name =~ /^[a-z0-9]{0,10}$/
			@hash_users_register[id] = name
		else
			puts "you must introduce a correct format user name"
		end
		return @hash_users_register
	end
	def register_amount_of_users()
		n = 0
		puts "Introduce a number between 3 and 15: "
		n = gets.chomp().to_i
		if n >= 3 && n <= 15
		 	n.times do
		 		register_user()
		 	end
		 else
		 	puts "Introduce a valid number >3 and <=15"
		end

	end
	def type_conversion_option()
		print "1. for minute to hour\n2. for hours to days, \n3. for days to month\n Choose a option..."
		option = gets.chomp().to_i
		case option 
		when 1 then p TimeConversion.minutes_to_hours()
		when 2 then p TimeConversion.hours_to_day()
		when 3 then p TimeConversion.days_to_month()
		end
	end
end

register = Registration.instance
register.register_amount_of_users()
p register.hash_users_register
register.type_conversion_option()
