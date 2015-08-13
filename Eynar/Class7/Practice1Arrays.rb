class Practice1Arrays
	
	attr_accessor:numberElements

	def initialize()
		@array_obj=Array.new
	end

	def read_array
		puts "numberElements #{numberElements}"
	    @numberElements.times do |value|
	    	 puts "read elements"
 			 value=gets.chomp
 			 @array_obj.push(value)
 			end
	end

	def print_array
		puts @array_obj.inspect
		# puts array_obj
	end	
end

example = Practice1Arrays.new

puts "Write number of elements"

example.numberElements = gets.to_i

example.read_array
example.print_array