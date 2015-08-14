class Father
	@@amount = 1000

	def self.amount
		@@amount
	end
end

class Father_one < Father
	@@amount -= 200
	puts "First Father is taking 200"
end

class Father_two < Father
	@@amount -= 100
	puts "Second Father is taking 100"
end

class Father_three < Father
	@@amount -= 150
	puts "Third Father is taking 150"
end

puts "The remaining amount is: #{Father.amount}"