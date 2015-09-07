
require 'singleton'
class Items
	include Singleton
  
  	attr_accessor :items
  
  	def initialize ()
    	@items = Array.new()
  	end
  	def define_item (item)
    	@items.push(item)
  	end
  	def search_item(item)
  		if (item_in_list(item))
  			return "Found"
  		else
  			return "Not Found"
  		end
  	end
  	def item_in_list(item_name)
		@items.each do |item|
			if item_name == item
				return true
			else
				return false
			end
		end
  	end
  
end
