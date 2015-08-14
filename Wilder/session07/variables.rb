# Getter & Setters
class Item
	#attr_reader :item_name
	#attr_writer :item_name
	attr_accessor :item_name
	def initialize(quantity)
		@quantity = quantity
	end
end
item = Item.new(1)
puts item.item_name = "test"

#Arrays
my_array = [1, 2, 3, 7]
puts my_array
puts my_array.inspect
# short of inspect
p my_array

#intersection operator &
puts [1, 2, 3] & [3, 4, 5] #prints 3


#Practice:
class Array_Manager
	def initialize
		@array = Array.new
	end
	def fill_array()
		puts "enter array size: "
		size = gets.chomp.to_i
		size.times do | index |
			puts "enter value for index #{index}: "
			@array.push(gets.chomp)			
		end
		@array
	end
	def print_array(array)
		p array
	end
end

arr_test = Array_Manager.new
arr_test.print_array(arr_test.fill_array())
