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

  def method_1()
    array = Array.new()
    puts "Please insert the number of elements of the array"
    elements = gets.chomp.to_i
    elements.times do |item|
      puts "Please insert the elements[#{item}]"
      value = gets.chomp
      array.push(value)
    end

    return array
  end

  def method_2(array)
    puts array.inspect
  end
end

ar = Arreglo.new()
array = ar.method_1()
ar.method_2(array)