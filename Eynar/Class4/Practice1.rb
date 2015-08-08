=begin description
Practice 1, this file is to learn to use methods and returns
=end

def person_age(name, age)
	name=name.chomp.to_s.upcase
	ageToHours=age.to_i*8760	
	
	puts("hi #{name}")
	puts("your age : #{age} year in hours is : #{ageToHours} hrs.")
end


def convertToFahrenheit(celsiousValue)
	fahranheit=((9*celsiousValue.to_f)/5)*32
end

def convertToCelsious(fahranheitValue)
	(5*(fahranheitValue.to_f-32))/9
end

# Call Methods
#person_age("Eynar",2)
#person_age "Eynar1",2

fahranheitConverted=convertToFahrenheit 1
puts("fahranheit : #{fahranheitConverted}")
puts("celsious : #{convertToCelsious (fahranheitConverted)}")
