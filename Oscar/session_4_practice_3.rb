=begin
SESSION 4 - PRACTICE 3
=end

def print_flight_information(name, price, destination="CBBA")
  price_converted = price / 6.96
  puts "The passenger #{name} with destination to #{destination} paid #{price_converted} dollars for the ticket"
end

puts "Please insert the name"
name = gets.chomp
puts "Please insert the price (in BOB)"
price = gets.chomp.to_f
pr = print_flight_information name, price, "LA PAZ"
puts pr