=begin
This practice is to use the regular expresion
=end

class Practice2RegularExpression
	
	attr_reader:user_name
	attr_reader:password
	attr_reader:email

	def initialize()
	end
	
	def read_user_name
		p "enter the user name"
	 	user_name=gets.chomp
	 	if user_name =~ /[a-z_0-9]/
	 		p "the user name format is correctly : #{user_name}"
	 	else
	 		p "the user name has incorrect format"
	 	end
    end

    def read_password
    	p "enter the password"
	 	password=gets.chomp
	 	if password =~ /[a-z0-9A-Z]{8,16}/
	 		p "the password format is correctly : #{password}"
	 	else
	 		p "the password has incorrect format"
	 	end
	end

	def read_email
		p "enter the email"
	 	email=gets.chomp
	 	if email =~ /^[a-zA-Z0-9]+@{1}+[a-zA-Z0-9]{3,10}+.[a-zA-Z]?{3}+.[a-zA-Z]{2,3}$/
	 		p "the email format is correctly : #{email}"
	 	else
	 		p "the email has incorrect format"
	 	end
	end

end

example= Practice2RegularExpression.new

example.read_user_name
example.read_password
example.read_email