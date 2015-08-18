class People 
	attr_accessor :person_name 
	attr_accessor :person_id
    def create_array_people(amount_persons)
    	array_people = Hash.new
    	amount_persons.times do |i|
    		puts "Insert person id to person in position #{i}"
    		person_id = gets.chomp.to_s
    		puts "Insert person name to person in position #{i}"
    		person_name = gets.chomp.to_s
    		
    	array_people.store(person_id,person_name)

        end
        return array_people
    end

	def get_person_name_id
		return person_name, person_id
	end
	def set_name_upper_case

	end
	def say_bye
	end
end

puts "Enter the amount of persons to register"
amount_persons = gets.chomp.to_i
create_array_people(amount_persons)