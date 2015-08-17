class Iterator
	attr_accessor :array_person_name
	attr_accessor :array_person_id

	def register_person(number_person)
		@array_person_name = Array.new
		@array_person_id = Array.new
		number_person.times do |i|
			puts "Type the ID for the person #{i}"
			array_person_id.push gets.chomp
			puts "Type the name for the person #{i}"
			array_person_name.push gets.chomp
		end
	end

	def change_to_uppercase
		names = @array_person_name.map {|name| name.upcase}
		names.each_with_index {|name,i| 
			puts "Position #{i}: #{name}"}
		return names
	end

	def say_goodbye(new_array)
		i = 0
		begin
			puts "Goodbye #{new_array[i]}"
			i += 1
		end while i < new_array.length
	end
end

obj = Iterator.new
puts "Enter the number of person"
person = gets.chomp.to_i
obj.register_person(person)
new_array = obj.change_to_uppercase
obj.say_goodbye(new_array)