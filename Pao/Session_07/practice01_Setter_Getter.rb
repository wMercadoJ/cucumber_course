=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/12/2015
Description: - Class and Variables - Setter and Getter
			practica day 7		
=end

=begin
Examples from ppt: setter, getter, attr_reader, attr_writer	
=end

class Item
	#attr_reader :item_name   # with this attr_reader will automatically be a getter, it will work with out method item_name
	#attr_writer :item_name
	attr_accessor :item_name # setter and getter  
	
	def initialize (quantity)
		#@item_name = item_name  # setter
		@quantity = quantity    # setter 
	end
	# def item_name   #if we delete this fucntion, the item_name variable will work also as a getter because of attr_reader declared
	# 	@item_name  	# Getter
	# end
end

item = Item.new(3)
item.item_name = "Radio"
puts  item.item_name
puts item.item_name = "TV"

=begin
Examples from ppt: Array.new, arrays=> pop, push, shift, unshift, first, last
=end

my_array = [1,2,3,7,11,"28"]
puts my_array
puts my_array.inspect
p my_array #shorcat for line 38