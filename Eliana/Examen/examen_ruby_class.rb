require './examen_ruby'
class Registration
	include Time_conversions

	attr_accessor :username
	attr_accessor :id

    def initialize
    	@username = nil
    	@id = nil
    	@array_users = Hash.new
    	@option_user = Hash.new 
    end

	def amount_users
		p "Insert the amount of users to register: "
		amount = gets.chomp.to_i
		@amount_users  = if (amount < 16 && amount > 2) then amount else "Insert a value between 15 and 3" end
		return @amount_users
	end

	def set_username
    	p "Insert username:"
    	user_name = gets.chomp.to_s
    	@username = user_name =~ /^[a-z][a-z_0-9]*$/ ?
    	            user_name :
    	            "Invalid value"
    end

	def user_registration(amount_users)
		amount_users.times do 
		set_username
		puts "Insert the id to user #{@username}: "
		@id = gets.chomp.to_s
		@array_users.store(@username, @id)
	    end
        return @array_users
	end

    def type_conversion 
		@array_users.each_with_index { |(key,value)| 
			p "Select convertion type to user: #{@array_users[key]}"
			p "a) From minutes to hours"
			p "b) From hours to days"
			p "c) From day to month"
			option = gets.chomp.to_s
		
			p "Option selected by the user #{@array_users[key]} is: #{option}"
			user = @array_users[key]
			@option_user[user] = option
		}
		return @option_user
	end

	def display_conversion
	    @option_user.each_with_index  do |(key,value)| 
		case @option_user[key]
			when "a" then
			  p "Insert the values in minutes: "
			  minutes = gets.chomp.to_i
			  convert_minutes_hours minutes
			when "b" then
			  p "Insert the values in hours: "
			  hours = gets.chomp.to_i
			  convert_hours_day hours
			when "c" then
			  p "Insert the values in days: "
			  days = gets.chomp.to_i
			  convert_days_month days
			else
			  puts "incorrect option."
		end
		end
	end
end

def registration
	@registration ||= Registration.new
end

amount = registration.amount_users
registration.user_registration amount
registration.type_conversion
registration.display_conversion