class MyArray
	attr_accessor :array_length

	def initialize()
		@array_length = array_length
	end

	def set_array()
		ary = Array.new
		array_length.times do |i|
			puts "Enter the value for position #{i}"
			ary.push gets.chomp
		end
		return ary
	end

	def print_array(my_array)
		puts my_array.inspect
	end
end

array = MyArray.new()
puts "Enter the length of the Array"
puts array.array_length = gets.chomp.to_i
my_array = array.set_array
array.print_array(my_array)