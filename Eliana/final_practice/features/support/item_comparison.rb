class Item_comparison
    
    def initialize
    	@array_item = Hash.new
    end

	def search_item value
		puts @array_item.has_value value? "The item has been found.": "The item has not been found."
	end
end