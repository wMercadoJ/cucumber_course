class MyHash
	attr_accessor :hash

	def initialize()
		@hash = hash
	end

	def create_hash()
		@hash = Hash.new
		puts "Type the length of the Hash"
		length = gets.chomp.to_i
		length.times do |i|
			puts "Enter the key: #{i}"
			key = gets.chomp
			puts "Enter the value for key: #{i}"
			hash[key] = gets.chomp
		end
	end

	def print_hash_names(my_hash)
		puts "Keys: #{my_hash.keys}"
	end

	def print_hash_values(my_hash)
		puts "Values: #{my_hash.values}"
	end

	def print_hash(my_hash)
		p my_hash
	end

	def search_key(my_hash)
		puts "Enter the key to find"
		puts my_hash.has_key?(gets.chomp.to_s)
	end

	def search_value(my_hash)
		puts "Enter the value to find"
		puts my_hash.has_value?(gets.chomp)
	end
end

obj = MyHash.new
obj.create_hash
obj.print_hash_names(obj.hash)
obj.print_hash_values(obj.hash)
obj.print_hash(obj.hash)
obj.search_key(obj.hash)
obj.search_value(obj.hash)