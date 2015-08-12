=begin
 This example is to test the getter and setter usign attrib reader
=end

class Items
	attr_reader :item_name
	@item_name="asd"
	def initialize(item_name, quantity)
		#@item_name=item_name
		@quantity=quantity
	end
end

item=Items.new("test",1)
p item.item_name