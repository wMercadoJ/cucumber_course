class Person
	attr_writer :name_person
	attr_reader :age_person
   @error_message

def calculate_year_hours(years)
	@error_message = "Age cannot be calculated"
	puts @age_person = years < 35 ? years* 8760 : @error_message
end

def print_message_age(age_person)
	case age_person
		when 0..5 then puts  @name_person + " you are a baby"
        when 6..12 then puts @name_person + " you are a child"
        when 13..21 then puts @name_person + " you are a young people"
        else puts @error_message
    end 
end
end

person = Person.new
person.name_person = "Krystel"
years = 20
person.calculate_year_hours years
person.print_message_age  years #person.age_person