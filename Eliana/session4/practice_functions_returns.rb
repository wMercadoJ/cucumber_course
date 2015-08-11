=begin
# Method that prints a passenger name ,a destination city and the price of ticket in dollars.


def print_passenger_values (passenger_name, destination = "CBBA", price)

	price_dollars = price * 6.94 

	"Information about passenger: \n passenger name: #{passenger_name} \n destination city : #{destination} \n price of ticket in dollars : #{price_dollars} "
end

puts print_passenger_values "Maria", 70
puts print_passenger_values("Maria", "Oruro", 20)
=end

# Method that convert seconds in minutes and seconds in hours 

def converter (seconds)
	puts "Please insert the seconds that you want to convert: "
	second = gets.chomp.to_i
    minutes = seconds * 60 
    hours = minutes * 60
    return minutes, hours	
end

value_minutes, value_hours = converter(60)
puts "minutes #{value_minutes}, hours = #{value_hours}"