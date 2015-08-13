class Father
	@@amount_money = 70
	def self.amount_money # initialize
		@@amount_money
	end
end

puts Father.amount_money

class Child1 < Father # Herencia simple
	@@amount_money = 10
end

puts Child1.amount_money
puts Father.amount_money

class Child2 < Father # Herencia simple
	@@amount_money = 20
end

puts Child1.amount_money
puts Child2.amount_money
puts Father.amount_money

class Child3 < Father # Herencia simple
	@@amount_money = 30
end

puts Child1.amount_money
puts Child2.amount_money
puts Child3.amount_money
puts Father.amount_money