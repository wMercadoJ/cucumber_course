class ArrayPractice
	attr_reader:array_result
	attr_writer:array_result
	def getArray
		@array_result = Array.new
		puts "Length:"
		array_length = gets.chomp.to_i

		array_length.times do | index |
			puts "Insert value for #{index} index:"
			new_value = gets.chomp
			array_result.push(new_value)
		end
		@array_result.inspect
		# array_result
	end

	def printArray(array_result)
		puts array_result.inspect
	end
end

ap = ArrayPractice.new
puts "returned: #{ap.getArray}"
puts "from attr: #{ap.array_result}"
ap.printArray ap.array_result
ap.array_result.push "true"
ap.printArray ap.array_result
