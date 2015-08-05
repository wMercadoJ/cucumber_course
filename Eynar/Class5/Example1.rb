=begin description
Example 1 blocks
=end

def test_Block
	puts "You are in the methods"
	yield
	puts "You are again block to the method"	
	yield
end

test_Block{ puts "You are in the block"}