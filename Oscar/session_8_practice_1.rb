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

	attr_accessor :hash

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

	def print_hash_keys()
		puts "Printing hash keys"
		puts hash.keys
	end

	def print_hash_values()
		puts "Printing hash values"
		puts hash.values
	end

	def print_hash()
		puts "Printing all hash"
		puts hash
	end

	def check_key()
		puts "Please insert the key to be verified"
		key = gets.chomp
		p hash.has_key?(key)
	end

	def check_value()
		puts "Please insert the value to be verified"
		key = gets.chomp
		p hash.has_value?(key)
	end

end

rh = RubyHashes.new
rh.hash = rh.create_hash()
rh.print_hash_keys()
rh.print_hash_values()
rh.print_hash()
rh.check_key()
rh.check_value()