class Item
	attr_reader :item_name
	attr_reader :item_category
	attr_writer :item_category

	attr_accessor :item_price

	def initialize(quantity)		
		@quantity = quantity
	end

	def get_item_name
		@item_name
	end

	def set_item_name name
		@item_name = name 
	end
end

item = Item.new(1)
item.set_item_name "RADIO"
puts item.item_name

puts item.item_category = "Category"
puts item.item_category  # it does not work if we don-t have the attr_reader for item_category

item.item_price = 123
puts item.item_price



myarray = [1,2,5,8] 
puts myarray
puts myarray.inspect
p myarray

puts [1,5,8] & [5,9,8,15]