class MyArray
	attr_writer :number_elements
	attr_reader :array_elements
	
	def method1
		@array_elements = Array.new

		# puts "Introduce the number of elements that will be created the array"
		# number = gets.chomp

		@number_elements.times do | value | 			
			puts "Introduce the #{value + 1} element in array"
			element = gets.chomp
			@array_elements.push(element)
		end

		@array_elements
	end

	def method2 array 
		p array
	end
end


puts "Introduce the number of elements that will be created the array"
number = gets.chomp.to_i

array_test = MyArray.new
array_test.number_elements = number

array = array_test.method1
puts "Array displayed from method 2"
array_test.method2 array

puts "Array displayed using Getter"
p array_test.array_elements



