# class Item
# 	# attr_reader :item_name
# 	# attr_writer :item_name

# 	attr_accessor :item_name

# 	def initialize(quantity)
# 		@quantity = quantity
# 	end

# end

# item = Item.new(1)
# item.item_name = "radio"
# puts item.item_name

# array = [1,2,3,4,5]
# puts array
# puts array.inspect
# p array

# puts array.pop
# puts array.push(7).inspect

class Arreglo

	def initialize()
	end

	def method1()
		puts "Please insert the number of elements of the array"
		a = Array.new()
		elements = gets
		elements.times do |item|
			puts "Please insert the elements[#{item}]"
			value = gets
			a.push(value)
		end


		
		
		


		# a.each do |item|
		# 	item = gets
		# end
		puts a.inspect
		return a
	end

	def method2(arreglo)
		puts arreglo.inspect
	end
end

ar = Arreglo.new()
arr = ar.method1()
ar.method2(arr)