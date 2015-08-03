=begin
	Practice#2: Use math & logic operators and How to use single and multiline comments 
=end
puts
puts "::::::: Practice of Operators :::::::"
puts 

puts "I will now count my chickens:"

puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3 + 2 < 5 - 7

# puts "What is 3 + 2? #{3 + 2}"
# puts "What is 5 - 7? #{5 - 7}"

# puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"


=begin
	Practice#3: Use of variables 
=end
puts
puts "::::::: Practioce of Operatos with Variables :::::::"
puts 


HENS = 25 + 30 / 6
roosters = 100 - 25 * 3 % 4
multipleMath = 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
logic = 3 + 2 < 5 - 7
greaterVar = 5 > -2
greater_or_equal = 5 >= -2
less_or_equal = 5 <= -2
stringVar = "Walter"

puts "I will now count my chickens:"

puts "Hens #{HENS}"
puts "Roosters #{roosters}"

puts "Now I will count the eggs:"

puts "Multiple operation: #{multipleMath}"

puts "Is it true that 3 + 2 < 5 - 7?"

puts logic


puts "How about some more."

puts "Is it greater? #{greaterVar}"
puts "Is it greater or equal? #{greater_or_equal}"
puts "Is it less or equal? #{less_or_equal}"

puts "server variables in same line: Hens: #{HENS} and #{roosters}"
puts "Calc of variables #{HENS * roosters / 100 }"
puts "Hello #{stringVar}"
# puts testjala

=begin
	Practice#4: Calculate seconds in minutes, seconds in Hours and seconds in days 
=end

puts
puts "::::::: Practice of Conversion :::::::"
puts 

seconds_to_conver = 151530
minutes_conversion = 60
hours_conversion = 60
days_conversion = 24

seconds_to_minutes = seconds_to_conver / 60

seconds_to_hours = (seconds_to_conver / 60) / 24

seconds_to_days = ((seconds_to_conver / minutes_conversion) / hours_conversion) / days_conversion

puts "This is the conversion of #{seconds_to_conver} in minutes : #{seconds_to_minutes}"

puts "This is the conversion of #{seconds_to_conver} in hours : #{seconds_to_hours}"

puts "This is the conversion of #{seconds_to_conver} in days : #{seconds_to_days}"