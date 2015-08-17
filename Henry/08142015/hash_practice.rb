class HashPractice
	attr_reader:instance_hash
	
	def createHash
		@instance_hash = Hash.new
		puts "Hash length:"
		hash_length = gets.chomp.to_i

		hash_length.times do | index |
			puts "Insert KEY for '#{index}' element:"
			hash_key = gets.chomp
			puts "Insert VALUE for '#{hash_key}' key:"
			hash_value = gets.chomp
			instance_hash.store  hash_key,hash_value
		end
		@instance_hash.inspect
		# array_result
	end

	def printHash(custom_hash)
		p custom_hash.inspect
	end

	def printKeys(custom_hash)
		p "Keys: #{custom_hash.keys}"
	end

	def printValues(custom_hash)
		p "Values: #{custom_hash.values}"
	end

	def hasKey
		puts "Insert KEY:"
		hash_key = gets.chomp
		@instance_hash.has_key? hash_key
	end

	def hasValue
		puts "Insert VALUE:"
		hash_value = gets.chomp
		@instance_hash.has_value? hash_value
	end

end

hp = HashPractice.new
hp.createHash

hp.printHash(hp.instance_hash)

hp.printValues(hp.instance_hash)
hp.printKeys(hp.instance_hash)

p hp.hasKey
p hp.hasValue

