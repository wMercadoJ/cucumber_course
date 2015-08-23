class RegExRuby

	def username_regex
		puts("Introduce a username:")
		username = gets.chomp.to_s
		puts results =  username =~ /[a-z0-9\_]/ ? "The #{username} is valid" : "The #{username} is invalid"		
	end
	def password_regex
		puts("Introduce a password:")
		password = gets.chomp.to_s
		puts results =  password =~ /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/ ? "The #{password} is valid" : "The #{password} is invalid"		
	end
	def email_regex
		puts("Introduce a email:")
		email = gets.chomp.to_s
		puts results =  email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i ? "The #{email} is valid" : "The #{email} is invalid"		
	end
end

regex_test = RegExRuby.new
regex_test.username_regex
regex_test.password_regex
regex_test.email_regex
