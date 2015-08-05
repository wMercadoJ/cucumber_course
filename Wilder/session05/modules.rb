#blocks
def test_block
	puts "first message"
	yield
	puts "second message"
	yield
end
test_block {puts "this is sparta"}

value1 = 10
nTimes = 5
nTimes.times do | value2 |
	value1 = value2
	puts "value1 inside block: #{value1}"
end

puts "value1 outside block: #{value1}"

#modules
module Week
	FIRST_DAY = "sunday"
	def Week.weeks_in_month
		puts "4 weeks in a month"
	end
	def self.weeks_in_year
		puts "52 weeks in a month"
	end
end

puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year

#practice
module  Greets
	def sayHi
		puts "hi friend"
	end
	def sayGoodMorning
		puts "good morning"
	end
	def sayGoodAfternoon
		puts "good afternoon"
	end	
end

module  Byes
	def sayGoodBye
		puts "good bye"
	end
	def saySeeYou
		puts "see you later"
	end
	def sayTakeCare
		puts "take care"
	end	
end

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