class People 
	attr_accessor :person_name 
	attr_accessor :person_id

    def create_array_people(amount_persons)
    	array_people = Hash.new
    	amount_persons.times do |i|
    		puts "Insert person id to person in position #{i}"
    		@person_id = gets.chomp.to_s
    		puts "Insert person name to person in position #{i}"
    		@person_name = gets.chomp.to_s
    		
    	array_people.store(@person_id, @person_name)
        end
        return array_people
    end

	def get_person_name_id array_people
        puts "Print name position: "
		array_people.each_with_index do |(key, value), index|
            puts "Person Name:  #{array_people[key].upcase} , position: #{index}"
        end
        return array_upper_case = array_people.map {|id,name| name.upcase}
	end

	def say_bye array_people

        $position = 0
        begin
           puts("Good Bye : #{array_people[$position]}" )
           $position +=1
        end while $position < array_people.length
	end
end

person = People.new
puts "Enter the amount of persons to register: "
amount_persons = gets.chomp.to_i
array = person.create_array_people(amount_persons)
new_array = person.get_person_name_id array
person.say_bye new_array