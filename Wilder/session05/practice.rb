require_relative 'greetings'
class GreetingsManager
	include Greets
	include Byes
	def sayHello
		puts "helloww"
	end
end

test = GreetingsManager.new
test.sayHi
test.sayGoodBye
test.sayHello