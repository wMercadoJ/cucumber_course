class Father
	@@money = 10
	def self.money
		@@money
	end
end

puts Father.money

class Child1 < Father
	def self.restMoney()
		amount = rand(0..@@money)
		puts "Taking #{amount} for Child1 from father"
		@@money-=amount
	end
end

class Child2 < Father
	def self.restMoney()
		amount = rand(0..@@money)
		puts "Taking #{amount} for Child2 from father"
		@@money-=amount
	end
end

class Child3 < Father
	def self.restMoney()
		amount = rand(0..@@money)
		puts "Taking #{amount} for Child3 from father"
		@@money-=amount
	end
end

Child1.restMoney()
Child2.restMoney()
Child3.restMoney()
puts Father.money