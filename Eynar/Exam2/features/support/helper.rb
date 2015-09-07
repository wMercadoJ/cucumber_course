require 'singleton'

class Clients
	include Singleton
	attr_accessor:my_array

	def initialize()
		@my_array=["Eynar","EEynar","Eynarr"]
	end

	def isItemInTheArray(item_to_find)
	   message=@my_array.select{ |item| item == item_to_find.to_s}
       message= message==[]?("Item was not found"):("Item was found")
	end	
end
