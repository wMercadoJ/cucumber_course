=begin
 This example is to test the getter and setter usign attrib writer
=end

class Items

	attr_reader:item_name
	attr_writer:item_name

	def initialize(quantity)
		@quantity=quantity
	end
end

item=Items.new(1)

p item.item_name="radio"