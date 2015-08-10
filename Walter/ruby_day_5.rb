##
puts "::::::::::::::::: Block"
##
def test_block
	puts "You are in the method"
	yield
	puts "You are again bach to the method"
	yield
end

test_block {puts "You are in the Block"}

##
puts
puts "::::::::::::::::: Block Do"
##
value_1 = 10 
5.times do | value_2, value_3 ; value_1 | 
	value_1 = value_2
	value_2 = value_3
	puts "value_1 inside the block: #{value_1} and #{value_2}"
end

puts "value_1 outside the block: #{value_1}"

##
puts
puts "::::::::::::::::: Module "
##
module Week
	FIRST_DAY = "Sunday"
	def weeks_in_month
		puts "You have four weeks in a month"
	end
	def weeks_in_year
		puts "You have fifty two weeks in a month"
	end
end
puts Week::FIRST_DAY
#Week.weeks_in_month
#Week.weeks_in_year


class Test
	include Week
end

days = Test.new
days.weeks_in_year
