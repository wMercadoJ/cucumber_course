class HashManager
	attr_accessor :hash_created
def create_hash
	puts "Type hash length"
	hash_length = gets.chomp.to_i
	@hash_created = Hash.new

    hash_length.times do |countHash|
	puts "Insert the key: "
	hash_key = gets.chomp.to_s
	puts "Insert the value: "
	hash_value = gets.chomp.to_s
	
	@hash_created.store(hash_key, hash_value)
    end
    return @hash_created
end

def print_hash_values (hash_to_print)
     puts hash_to_print.values
end

def print_hash_keys (hash_to_print)
     puts hash_to_print.keys
end

def print_hash (hash_to_print)
	 p hash_to_print 
end

def is_value_present(hash_to_search, value)
	puts "Insert "
	value = gets.chomp.to_s
	puts hash_to_search.has_value?(value)  
end

def is_key_present(hash_to_search, key)
	puts hash_to_search.has_key?(key)  
end

end

hashManager = HashManager.new
myHash = hashManager.create_hash
hashManager.print_hash myHash
hashManager.print_hash_values myHash
hashManager.is_key_present myHash, "2"
hashManager.is_value_present myHash, "2"