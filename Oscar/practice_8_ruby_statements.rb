class People

	@hash_gb

	def initialize(quantity)
		@quantity = quantity
		puts @quantity
		@hash = Hash.new(@quantity.to_i)
		@hash_gb = Hash.new(quantity)
		puts @hash_gb.length 
	end


	def get_information()
		puts @hash.length
		@hash.each do |key, value|
			puts "Please register a name"
			name = gets.chomp
			puts "Please register a ID"
			id = gets.chomp.to_i
			@Hash.key = name
			@Hash.value = id
		end
	end

	def do_tasks_1()
		arr = Array.new
	# for each one of the Names, change them to upper case
		@Hash.each do |(key, value), index|
		up_key = key.upcase
		puts index
		arr.push(up_key)
		end

		return arr
	end


	def say_good_bye(array)
		array.each do |item|
			puts "Good bye #{item}"
		end
	end

end

people = People.new(2)
people.get_information()