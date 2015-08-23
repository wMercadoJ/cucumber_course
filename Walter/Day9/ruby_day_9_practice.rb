class RegisterPerson

	attr_accessor :registers	

	def register_person number		
		@registers = Hash.new
		number.times do | value |
				puts "Introduce the #{value + 1} Name of Person registered:"
				name = gets.chomp						
				
				puts "Introduce an ID  for #{name}:"
				id = gets.chomp						
				@registers.store(name, id)	
			end		
	end

	def get_persons_registered registers
		puts "List of Persons registered: "
		registers.each{|(name, id)| puts "#{name} - #{id}"}		
	end

	def modify_register
		@registers_modified = @registers\.map {|(name,id)| name.upcase} 
		@registers_modified.each_with_index do|name,index| 			 
			puts "#{name} has being\
			registerd in:"
			puts "\tPossition #{index} in the array and #{index+1} in the list"
		end
	end

	def say_goodbye
		@registers_modified.each{|(name)| puts "Good Bye: #{name}"}		
	end

end

register = RegisterPerson.new
puts "Introduce the number of registers to perform:"
number = gets.chomp.to_i
register.register_person number
hash_registers = register.registers #To user Getter 
register.get_persons_registered hash_registers
register.modify_register
register.say_goodbye




