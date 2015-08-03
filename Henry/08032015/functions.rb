# def person_age(name, age)
# 	up_name = name.upcase
# 	age_in_hours = age * 365 * 24
# 	puts "Hi #{up_name}"
# 	puts "Your age #{age_in_hours}"
# end

# puts "Name:"
# name = gets.chomp.to_s
# puts "Age:"
# age = gets.chomp.to_f

# person_age name, age


def to_fahrenheit(celsius)
	fahrenheit = (((9 * celsius) / 5) + 32)
end

def to_celsius(fahrenheit)
	(5 * (fahrenheit - 32))/9
end

puts "Celsius:"
celsius = gets.chomp.to_f
puts "Fahrenheit:"
fahrenheit = gets.chomp.to_f

puts "Your Celsius:#{celsius} in Fahrenheit:#{to_fahrenheit celsius}"
puts "Your Fahrenheit:#{fahrenheit} in Celsius:#{to_celsius fahrenheit}"