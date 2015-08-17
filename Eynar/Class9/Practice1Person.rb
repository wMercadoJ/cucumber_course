
class Register
	attr_accessor:amount

	def initialize()
		@name = Hash.new
	end
	
	def read_name_and_id
		 puts "Read Id and Name : #{amount}"
		 amount.times do |id,name|
	    	 p "Enter ID"
 			 id=gets.chomp.to_s
 			 p "Enter Name"
 			 name=gets.chomp.to_s
 			 @name.store id,name
 			end		
	end

	def position_name
		puts "Print Name and position"
		@name.each_with_index  do	|(key,value),index| 
								p "name : #{@name[key].upcase} , position : #{index}"
							  end

		new_array=@name.map {|key,value| value.upcase}
		return new_array
	end
	
	def good_bye_person(array_with_name)

		$position = 0
		begin
		   puts("Good Bye : #{array_with_name[$position]}" )
		   $position +=1
		end while $position < amount
	end


end

example= Register.new

p "reading the amount"
example.amount=gets.to_i

example.read_name_and_id
array_name=example.position_name
example.good_bye_person array_name