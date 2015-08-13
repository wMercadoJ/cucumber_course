class Item
	# attr_reader:item_name
	# attr_writer:item_name
	attr_accessor:item_name,some
	def initialize(quantity)
		@quantity = quantity
	end
end

item =Item.new(1)
item.item_name = "tv"
item.some = "hmbh"
puts item.item_name