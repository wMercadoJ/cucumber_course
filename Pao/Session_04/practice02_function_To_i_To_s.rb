=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/03/2015
Description: - Functions
			 - to_i, to_s, to_f
practica day 4
=end

# function

def person_age_in_hours (name, age)
	age_to_days  = age.to_i * 365
	age_to_hours = age_to_days * 24

	uppercase_name = name.to_s.upcase


	puts "Hi #{uppercase_name}"
	puts "Your age #{age} in hours is : #{age_to_hours}"
end

person_age_in_hours("Paola", 23)
person_age_in_hours "Juana", 26


def celsius_to_fahrenheit_wreturn(celsius)
	fahrenheit = (((9 * celsius.to_f)/5) + 32).to_f
	return fahrenheit
end

def fahrenheit_to_celsius_wreturn(fahrenheit)
	celsius = ((5 * (fahrenheit.to_f - 32))/9).to_f
	return celsius
end

def celsius_to_fahrenheit(celsius)
	fahrenheit = (((9 * celsius.to_f)/5) + 32).to_f
end

def fahrenheit_to_celsius(fahrenheit)
	celsius = ((5 * (fahrenheit.to_f - 32))/9).to_f
end

puts celsius_to_fahrenheit(45.6).round(2)
puts fahrenheit_to_celsius (78.9).round(2)

