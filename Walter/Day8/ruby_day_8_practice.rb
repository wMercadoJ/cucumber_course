class HashPractice
	attr_accessor :hash_array

	def create_hash
		puts "Introduce the size of the hash"
		size_hash = gets.chomp.to_i
		@hash_array = Hash.new 

		size_hash.times do | value |
				puts "Introduce the #{value + 1} Key for the Hash"
				key = gets.chomp			

				puts "Introduce the Value for the '#{key}' in the Hash"
				value = gets.chomp
				
				@hash_array.store(key, value)
			end
	end

	def print_hash_key hash_array
		p hash_array.keys
	end

	def print_hash_values hash_array
		p hash_array.values
	end
	def print_hash hash_array
		p hash_array.inspect
	end

	def key_exists_in_hash hash_array
		puts "What Key do you need to search in the Hash}?"
		key = gets.chomp
		if hash_array.has_key?(key)
			puts "The '#{key}' exists in the Hash"
		elsif
			puts "The '#{key}' does not exists in the Hash"
		end
	end

	def value_exists_in_hash hash_array
		puts "What Value do you need to search in the Hash}?"
		value = gets.chomp
		puts results = hash_array.has_value?(value) ? 
						"The '#{value}' exists in the Hash" : 
						"The '#{value}' does not exists in the Hash"
		
	end

end

hash_test = HashPractice.new
hash_test.create_hash
hash_array = hash_test.hash_array
hash_test.print_hash_key hash_array
hash_test.print_hash_values hash_array
hash_test.print_hash hash_array
hash_test.key_exists_in_hash hash_array
hash_test.value_exists_in_hash hash_array

