module Greets
	def Greets.say_hello
		puts "Hello"
	end

	def Greets.say_hi
		puts "Hi Friend!!!"
	end

	def say_hola
		puts "Holas! :)"
	end
end

module Farewell
	def Farewell.say_bye
		puts "Bye"
	end

	def Farewell.say_see_you
		puts "See you later!!!"
	end
end

class Greetings
	include Greets
	include Farewell

	def do_greetings
		puts "Starting"
		Greets.say_hi
		Farewell.say_bye
	end
end

g = Greetings.new
g.do_greetings
g.say_hola