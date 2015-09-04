=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/03/2015
Description: - How to use Gets
			 - Chomp vs strip
			 - to_i, to_s, to_f
practica day 4
=end

puts "What is your Name?"
name = gets.chomp
puts "Hi #{name}!! How are you?"

		
# chomp vs strip
puts "Some Test".chomp(' Test')
puts "Some Test\r\n".chomp
puts "\tRobert Martin\r\n".strip



# to_i, to_s

print "Give me a number: "
number = gets.chomp.to_i
puts "The number is: #{number}"

bigger = number * 100

puts "The bigger number is: #{bigger}"

puts "#================Practice =======================#"

# insert at least 4 different types of string: number, strings with number, number with string, etc and print them as floating number.


puts "Give me a number: "
number = gets.chomp.to_f
puts "The float number is: #{number}"



