=begin
class Item
	def initialize(item_name, quantity)
		@item_name = item_name
		@quantity = quantity
	end

	def item_name # to do calculates
		@item_name		# an error is displayed when the method is comment because the variable is not visisble out of class
	end

end

item = Item.new("tv", 1)
puts item.item_name
=end

class Item
	#attr_reader :item_name # to interactuar con variables de instancia desde afuera de la clase
	#attr_writer :item_name
	attr_accessor :item_name
	attr_accessor :quantity
	def initialize(quantity)
		#@item_name = item_name
		@quantity = quantity
	end

end

item = Item.new(1)
puts item.item_name = "radio"
puts item.quantity = 20
