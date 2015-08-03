# Create a script in order to practice basic math operators
# July 31, 2015
# see some examples below:

# Variables
total_bananas = 25 + 30 / 6
total_potatos = 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
res_boolean = 3 + 2 < 5 - 7
add_res = 3 + 2
neg_res = 5 - 7
name = "Emily"
last_name = "Claure"
city = "Cochabamba"
# Time variables
time_segs = 365000
total_minutes = time_segs / 60 
total_hours = total_minutes /60
total_days = total_hours / 24

puts "I will count my fruits:"
puts "Bananas: #{total_bananas}"
 
puts "Now I will count potatos:"
puts "Potatos: #{total_potatos}"

#puts "invalid variable:  #{total_oranges}"
 
puts "Is true that comparation: #{add_res < neg_res}"

puts "Answer boolean: #{res_boolean}"

puts "What is 3 + 2? It is #{add_res}"

puts "What is 5 - 7? It is #{neg_res}"

puts "Student: #{name} #{last_name} she is from: #{city}"

puts "Total fruits: #{total_bananas + total_potatos} "

puts "Time Calculation-> total minutes: #{total_minutes} total hours: #{total_hours} total days: #{total_days}"