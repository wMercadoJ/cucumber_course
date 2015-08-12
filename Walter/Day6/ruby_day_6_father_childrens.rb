class Father	
	@@amount_of_money = 0

	def initialize(name, money)
		@name = name
		@@amount_of_money = money.to_f
	end

	def display_money
		puts "The money of #{@name}(Father) now is: #{@@amount_of_money}"
	end

end

class Child < Father
	def initialize(name)
		@name_child = name
	end 
	
	def take_money_from_father(money)
		@@amount_of_money = @@amount_of_money - money.to_f
		puts "#{@name_child}(Child) took: #{money} Bs. from his Father"
	end

	def display_name
		@name_child
	end
end


puts "Introduce the name of Father:"
name = gets.chomp

puts "Introduce the money that Father has:"
money_father = gets.chomp

father = Father.new name,money_father

puts "Introduce the name of his first son of the Father:"
name = gets.chomp

first_child = Child.new name

puts "Introduce the name of his second son of the Father:"
name = gets.chomp

second_child = Child.new name

puts "Introduce the name of his third son of the Father:"
name = gets.chomp

third_child = Child.new name


puts "Introduce the amount of money that #{first_child.display_name} took from his father"
money = gets.chomp

first_child.take_money_from_father money
father.display_money

puts "Introduce the amount of money that #{second_child.display_name} took from his father"
money = gets.chomp

second_child.take_money_from_father money
father.display_money

puts "Introduce the amount of money that #{third_child.display_name} took from his father"
money = gets.chomp

third_child.take_money_from_father money
father.display_money