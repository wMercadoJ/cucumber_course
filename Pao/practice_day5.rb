#block in ruby
=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/05/2015
Description: - how to use blocks
			practica day 5
=end


def test_block
	puts "you are in the method"
	yield
	puts "you are again back to the method"
	yield
	yield
end
test_block {puts "you are in the block"}

# Block do, end

value_1 = 10
5.times do | value_2 |
	value_1 = value_2
	puts "value_1 inside the block: #{value_1}"
end

puts "value_1 inside the block: #{value_1}"