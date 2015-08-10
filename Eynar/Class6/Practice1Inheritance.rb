
=begin
Practice - Create class named Father
=end
	
$global_money=50

class Father
	@@amount_money=$global_money
	def self.amount_money()
		@@amount_money
	end
end
puts "Amount Father : #{Father.amount_money}"

class Child1 < Father
	@@amount_money=10
end
puts "Amount Child1 : #{Child1.amount_money}"
$global_money=$global_money-Child1.amount_money


class Child2 < Father
	@@amount_money=15
end
puts "Amount Child2 : #{Child2.amount_money}"
$global_money=$global_money-Child2.amount_money

class Child3 < Father
	@@amount_money=5
end
puts "Amount Child3 : #{Child3.amount_money}"
$global_money=$global_money-Child3.amount_money

puts "Amount Father at end : #{$global_money}"