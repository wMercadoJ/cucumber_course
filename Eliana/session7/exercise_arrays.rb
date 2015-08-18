class ArrayManager
     
	def def_array
		#countArray = 0
		puts "Insert the number of elements of the array"
		number_elements = gets.chomp.to_i
		array = Array.new()#number_elements)
		number_elements.times do |countArray|
		puts "Insert the value for the array No #{countArray}" 
		value = gets.chomp
		array.push(value)
		#p array
		
	    end
       return array 
	end

	def display_array (array)
       	p array
	end
end

#array = [1,2,3,4]

arrayManager = ArrayManager.new
array = arrayManager.def_array
arrayManager.display_array(array)
