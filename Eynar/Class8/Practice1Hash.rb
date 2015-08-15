class Practice1Hash
	attr_accessor:size

	
	def initialize()
		@elements={}
	end

	def set_element_hash(element_value)    
		@elements=element_value
	end
	
	def print_keys()
		puts "Print Keys"
		p @elements.keys
	end

	def print_hash()
		puts "Print Hash"
		p @elements
	end

	def print_value()
		puts "Print Values"
		puts @elements.values
	end

	def read
		 puts "Read Elements : #{size}"
		 size.times do |key_value,value|
	    	 p "Enter Key"
 			 key_value=gets.chomp
 			 p "Enter Value"
 			 value=gets.chomp
 			 #elements[key_value]=value
 			 @elements.store key_value,value
 			end
	end

	def exist_key_on_hash()
		puts "type Key to see if it exist"
		value=gets.chomp
		p @elements.has_key?(value)
	end
	
	def exist_value_on_hash()
		puts "type Value to see if it exist"
		value=gets.chomp
		p @elements.has_value?(value)
	end
	
end

example=Practice1Hash.new

puts "Read the size"
example.size=gets.chomp.to_i

example.read
example.print_hash
example.print_keys
example.print_value
example.exist_value_on_hash
example.exist_key_on_hash
