# module Greetings
# 	def hi_friend
# 		puts "Hi friend";
# 	end

# 	def good_night
# 		puts "Good night";
# 	end

# 	def good_afternoon
# 		puts "Good afternoon";
# 	end
# end

# module Bye
# 	def Bye.good_bye
# 		puts "Good bye"
# 	end
# end

require_relative 'session_5_require_file'

class Person

	include Greetings;
	include Bye;	

	def hola
		# Bye.good_bye
		puts "Hola";
	end

end

p = Person.new;
p.hi_friend;
p.good_night
p.good_afternoon
p.good_bye
p.hola