#regular expression
class Person
	
	attr_writer:username
	attr_writer:password
	attr_writer:email

	def set_user_name
		puts "Insert username: "
		user_name = gets.chomp.to_s
		if user_name =~ /^[a-z][a-z_0-9]*$/
	 		@username = "User name : #{user_name} "
	 	else
	 		@username = "Please insert the username in lowercase also is accepted numbers. "
	 	end
	 	puts @username
    end

    def set_user_password
    	puts "Insert password: "
	 	password = gets.chomp.to_s
	 	@password = if password =~ /[a-z0-9A-Z]{8,16}/  then
	 		     "The password is strength " else
	 		     "The password is weak, you should change " end
	 	puts @password
	end

	def set_user_email
		puts "Insert email: "
	 	email = gets.chomp.to_s
	 	@email = email =~ /^ # Start of string
                          [a-z0-9] # First character
                          [0-9a-z.+]+ # Middle characters
                          [0-9a-z] # Last character
                          @ #Separating @ character
                          [0-9a-z] # Domain name begin
                          [0-9a-z.-]+ # Domain name middle
                          [0-9a-z] # Domain name end
                          $ # End of string
                          /xi ? # Case insensitive
	 		              "Email : #{email}" :
	 		              "The email is incorrect "
	 	puts @email
	end
end

person = Person.new
person.set_user_name
person.set_user_password
person.set_user_email