=begin description
Practice 2, this file is to learn to use methods and returns
=end

def convertToDollars(value)
    value.to_f/6.96
end

def passenger(nameValue,priceValue,destinationCityValue="CBBA")
	name=nameValue
	destinationCity=destinationCityValue
	value=convertToDollars priceValue
	puts("name : #{name}, destinationCity : #{destinationCity}  price : #{value}")
end


# Sending All Parameters
# puts("Set Name Passenger")
# name=number = gets.chomp.to_s

# puts("Set Destination City Passenger")
# destinationCity=gets.chop.to_s

# puts("Set Price Bs. Passenger")
# price=gets.chop.to_f

# passenger name,price,destinationCity

# Sending without destination City

puts("Set Name Passenger")
name=number = gets.chomp.to_s

puts("Set Price Bs. Passenger")
price=gets.chop.to_f

passenger name,price