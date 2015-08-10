=begin
Author: Paola Munoz
Subject: Ruby Basics
Description: - Math operators (Plus, Minus, Multiplicator, Division)
			 - Variables
			 - Print Variables in a sentence	

practica day 3

=end

# 1. take your previous script and change calculations for variables.
 
puts "=====================Nro. # 1 ============================"

 total_bananas = 25 + 30 / 6 
 total_apples = 100 - 25 + 3 % 4
 is_true = 3  + 2 < 5 - 7
 what_is_3_plus_2 = 3 + 2
 what_is_5_minus_7 = 5 - 7

puts "I will now count my fruits:"
puts "Banana: #{total_bananas}"
puts "apples: #{total_apples}"
puts "now i will count the potatos"
puts "Is it true that 3 + 2 < 5 - 7?"
puts is_true
puts "What is 3 + 2? It is #{what_is_3_plus_2}"
puts "what is 5 - 7? It is #{what_is_5_minus_7}"


puts "=====================Nro. # 2 ============================"

=begin

2. Add some line in the middle of your script that is refering to a 
variable that doesn't exist.
Run the file and please explain the error displayed
see line 19

the line stopped in line 19, sendig a error message for undefined variable.

=end

#puts "this is a non existing variable: #{non_variable}"


=begin
3. Create a new script
	1. add variable with number and strings
	2. print them as a senteces (like in the previous case)
	3. add some sentece that perform some calculations using variable names.
	e.g. instead of #{2 + 3} use #{arg + arg2}	
=end


puts "=====================Nro. # 3 ============================"

variable_string = "This is a string variable"
varibale_integer = 20 + 35
variable_integer2 = 100 - 5

puts "this is a sentences to see the string variable and integer variable: "
puts "lets see the string first: #{variable_string} #{variable_string}<-- Wow!"
puts "concat strings: #{variable_string + variable_string}"
puts "Now the turn is for the integer variable: #{varibale_integer} <-- Awesome!"

puts "operation with variables: #{varibale_integer + variable_integer2}"


puts "==========================Nro. # 4 ================================"

seconds = 1500000

seconds_in_minutes = seconds / 60
seconds_in_hour = (seconds_in_minutes)/60
seconds_in_days = (seconds_in_hour)/24

puts "Seconds: #{seconds} in minutes: #{seconds_in_minutes}"
puts "Seconds: #{seconds} in Hours: #{seconds_in_hour}"
puts "Seconds: #{seconds} in days: #{seconds_in_days}"

