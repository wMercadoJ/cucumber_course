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
		puts "What Key do you need to search in the Hash?"
		key = gets.chomp
		if hash_array.has_key?(key)
			puts "The '#{key}' exists in the Hash"
		elsif
			puts "The '#{key}' does not exists in the Hash"
		end
	end

	def value_exists_in_hash hash_array
		puts "What Value do you need to search in the Hash?"
		value = gets.chomp
		puts results = hash_array.has_value?(value) ? 
						"The '#{value}' exists in the Hash" : 
						"The '#{value}' does not exists in the Hash"
		
	end

end

# hash_test = HashPractice.new
# hash_test.create_hash
# hash_array = hash_test.hash_array
# hash_test.print_hash_key hash_array
# hash_test.print_hash_values hash_array
# hash_test.print_hash hash_array
# hash_test.key_exists_in_hash hash_array
# hash_test.value_exists_in_hash hash_array


class PersonControlStatement
	attr_accessor :name
	attr_accessor :age

	def calculate_years_in_hours
		puts "Introduce the name of the Person"
		@name = gets.chomp

		puts "Introduce the Age in Years of the #{@name}"
		@age = gets.chomp.to_i

		puts @result = if @age < 35 then "The hours that #{@name} has according with his/her age is: #{@age * 365 * 24}" else "Age cannot be calculated" end

	end

	def type_of_person_short_if
		puts results =  @age >= 0 && @age <= 5 ? "#{@name} with #{age} years is a Baby" :
		 @age >= 6 && @age <= 12 ? "#{@name} with #{age} years is a Child" :
		 @age >= 13 && @age <= 21 ? "#{@name} with #{age} years is a Young People" :
		 @age >= 22 && @age < 35 ? "#{@name} with #{age} years is a Adult" : "Type of Person cannot be calculated because #{@result}" 
		
	end


	def type_of_person_case age		
		case age
		when 0..5 then 
			puts "#{@name} with #{age} years is a Baby"    
		when 6..12 then 
			puts "#{@name} with #{age} years is a Child" 
		when 13..21 then 
			puts "#{@name} with #{age} years is a Young People" 
		when 22...35 then 
			puts "#{@name} with #{age} years is an Adult" 
		else 
			puts "Type of Person cannot be calculated because #{@result}" 
		end

	end
end

person = PersonControlStatement.new
person.calculate_years_in_hours

puts
puts "Method to evaluate the Type of person using short_if in ruby"
person.type_of_person_short_if

puts
puts "Method to evaluate the Type of person using case in ruby and reciving Age as parameter"
age = person.age
person.type_of_person_case age
