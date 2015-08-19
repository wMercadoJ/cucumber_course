class Registration
	attr_reader :username
	attr_reader :id

    def initialize
    	@username = nil
    	@id = nil
    end

	def user_registration(amount_users)
		array_users = Hash.new
        
        amount_users.times do |i|
		puts "Insert the username to user in position #{i}: "
		username = gets.chomp.to_s
		puts "Insert the id to user in position #{i}: "
		id = gets.chomp.to_s
		array_users.store(username, id)
	    end
        return array_users
         p array_users
	end

	def amount_users()
		puts "Insert the amount of users to register: "
		amount_users = gets.chomp.to_i
		if amount_users > 15 
		puts amount_users
	    else
	    puts "Insert a value between 15 and 3"
	end

	def type_conversion()
		puts "Select the "
	end

	def display_conversion()
	end
end

registration = Registration.new
registration.amount_users