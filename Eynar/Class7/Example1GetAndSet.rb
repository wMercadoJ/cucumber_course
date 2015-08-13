=begin
 This example is to test the getter and setter
=end
class Items
	def initialize(item_name, quantity)
		@item_name=item_name
		@quantity=quantity
	end
	
	def item_name
	  	@item_name
	end
end

item=Items.new("tv",1)
p item.item_name