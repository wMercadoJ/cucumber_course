module Greets
	def say_hello(name, computer_number)
		puts "Computer #{computer_number}: Hello #{name}"
	end
	def good_morning
		puts "Good morning"
	end
	def good_night
		puts "Good night"
	end
end

module Bye
	def say_bye
		puts "By my human friend"
	end
	def see_you_later
		puts "See you later my friend"
	end
	def take_care
		puts "Take care my friend"
	end
end

class Hello
include Greets
include Bye

end

object = Hello.new
object.say_hello("SIRI",1)
object.say_hello("S-Voice",2)