#hashes
class Hash_Manager
	def initialize
		@hash = {}
	end 
	def fill_hash()
		puts "enter length"
		length = gets.chomp.to_i
		length.times do | index |
			puts "enter value for index #{index}: "
			@hash[index.to_s] = gets.chomp			
		end
		@hash
	end
	def print_hash_keys
		p @hash.keys
	end
	def print_hash_values
		p @hash.values
	end
	def print_hash
		p @hash
	end
	def key?(key)
		@hash.has_key?(key)
	end
	def value?(val)
		@hash.has_value?(val)
	end
	
end

hash_test = Hash_Manager.new
hash_test.fill_hash()
hash_test.print_hash_keys
hash_test.print_hash_values
hash_test.print_hash
puts "search for key.."
key = gets.chomp.to_s
puts "key " + (hash_test.key?(key) == true ? "exists" : "not exists")
puts "search for value.."
val = gets.chomp.to_s
puts "value " + (hash_test.value?(val) == true ? "exists" : "not exists")