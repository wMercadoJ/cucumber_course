# Create a script in order to practice functions
# August 3, 2015
# see some examples below:

def person_age(name, age)
	age_days = age.to_i*365
	age_hours = age_days * 60 

    puts "Hi: #{name.upcase()}"
    puts "Your #{age} in hours is: #{age_hours}"

end

person_age("emily",60)
person_age "cris", "20"


def celsius_to_fahrenheit(value)
	g_celsius = value.to_i
	puts "fahrenheit = #{(((9 * g_celsius) / 5) + 32)}"
end


def fahrenheit_to_celsius(value)
	g_fahrenheit = value.to_f
	fahrenheit = (((5 * g_fahrenheit) - 32) / 9)
    return fahrenheit

end

celsius_to_fahrenheit "100"
fahrenheit_to_celsius "100"
