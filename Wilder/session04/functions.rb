# encoding: utf-8
def person_age(name, age)
	age_hours = age * (365*24)
	puts "hi " + name.upcase
	puts "your age #{age} in hours is #{age_hours}"
end

person_age('jose', 25)
person_age 'ana', 20

def to_fahrenheit(celcius)
	return (((9*celcius)/5)+32)
end

def to_celcius(f)
	(5*(f-32))/9
end

puts "insert the value you want to convert to fahrenheit"
cel = gets.chomp.to_i
puts "equals to " + to_fahrenheit(cel).to_s + "°F"

puts "insert the value you want to convert to celcius"
fahr = gets.chomp.to_i
puts "equals to " + to_celcius(fahr).to_s + "°C"

#practice
def printUserData(name, dest_city='CBBA', ticket_price)
	puts "***user data***"
    puts "name: #{name}"
    puts "destination city: #{dest_city}"
    puts "name: #{ticket_price}"
end
puts "enter name: "
name = gets.chomp
puts "ticket price: "
ticket_price = ('%.2f' % gets.chomp.to_f)
printUserData name, ticket_price