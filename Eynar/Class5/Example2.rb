=begin description
Example 2 blocks
=end

value_1=10

5.times do |value_2|
	value_1=value_2
	puts"value_1 the block : #{value_1}"
	end

puts"context : value_1 the block #{value_1}"