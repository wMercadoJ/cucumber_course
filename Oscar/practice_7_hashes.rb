# elements = Hash.new
# elements['H'] = 'Hidrogeno'
# elements['He'] = 'Helio'
# elements['Li'] = 'Litio'
# p elements['H']
# p elements.length
# p elements.values
# p elements.keys
# p elements

# tps = Hash['one', 1, 'two', 2, 'three', 3]
# p tps

# salaries = {"bob" => 10.9 , "larry" => 7.5, "jimmy" => 6, "jerry" => 6.5}
# salaries.inspect
# p salaries.inspect
# mySal = salaries.select{|name, salary| salary > 7.0}
# p mySal 

class RubyHashes
	def initialize()
	end

	def create_hash()
		puts "Please insert the length of the hash"
		len = gets.to_i
		hash = Hash.new
		len.times do |variable|
			puts "Please insert the key"
			key = gets.chomp
			puts "Please insert the value"
			value = gets.chomp
			hash[key] = value
		end

		puts "Hash created\n"

		return hash
	end

	def print_hash_keys(hash)
		puts "Printing hash keys"
		puts hash.keys
	end

	def print_hash_values(hash)
		puts "Printing hash values"
		puts hash.values
	end

	def print_hash(hash)
		puts "Printing all hash"
		puts hash
	end

	def check_key(hash)
		puts "Please insert the key to be verified"
		key = gets.chomp
		p hash.has_key?(key)
	end

	def check_value(hash)
		puts "Please insert the value to be verified"
		key = gets.chomp
		p hash.has_value?(key)
	end

end

r = RubyHashes.new
h = r.create_hash()
r.print_hash_keys(h)
r.print_hash_values(h)
r.print_hash(h)
r.check_key(h)
r.check_value(h)

