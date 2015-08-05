 # Day 4: Practice 1 
def person_age(name, age)
	name_upcase = name.upcase
	age_months = age.to_i * 12
	age_days = age_months * 365
	age_hours = age_days * 24

	puts "My name in upcase: #{name_upcase}"
	puts "My age in hours: #{age_hours}"
end

person_age("Walter", 32)
person_age "Walter",32

# Day 4: Practice 2

def calc_celcius_fahrenheit(celcius)
	fahrenheit = (((9 * celcius.to_f) / 5 ) + 32)
end

puts "Degrees in Fahrenheit: #{calc_celcius_fahrenheit(39)}"

def calc_fahrenheit_celcius(fahrenheit)
	(5 * (fahrenheit.to_f - 32 )) / 9
end

puts "Degrees in Celcius: #{calc_fahrenheit_celcius(100)}"

# Day 4: Practice 3

def reservation(passanger_name, destination_city="CBBA", price_ticket=15)
	price_in_dollar = price_ticket * 6.98
	detail = "Reservation for: #{passanger_name} \n"
	detail = detail + "Destination to: #{destination_city}\n"
	detail = detail + "Price to cancel: #{'%.2f'%price_in_dollar.to_f}"	
end

puts reservation "Walter Mercado"


# Day 4: Practice 4
def calculate_seconds_in_minutes_and_hours(seconds)
   minutes = seconds.to_i / 60
   hours =  minutes / 60
   return minutes,hours
end

puts "Introduce a number of Seconds to convert to Minutes and Hours:"
seconds = gets.chomp
value_minutes,value_hours = calculate_seconds_in_minutes_and_hours(seconds)
puts "Seconds converted to Minutes: #{value_minutes}"
puts "Seconds converted to Hours: #{value_hours}"