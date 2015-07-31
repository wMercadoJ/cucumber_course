=begin
Working with basic operations.
Other line
=end

bananas = 25 + 30 / 6
potatos = 4 + 5
puts "Bananas: #{bananas} and Potatos: #{potatos}"


result = 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts "Total result #{result}"

# 2 Not defined variable
# puts "Total result #{test}"

firstname = "Henry"
lastname = "Benito"

puts "Welcome " + firstname + " " + lastname

puts "Is it true that 3 + 2 <= 5 - 7?"
puts 3 + 2 <= 20 - 7

# 3.1 Work with variables
day = 31
month = 7
year = 2015
results = true

# 3.2 print using different type of variables
puts "Today is #{month}/#{day}/#{year}? #{results}"
puts "Today is " + (day - 1).to_s + "? " + results.to_s

# 3.3
puts "#{day % month + year}"

#A litle test with nil value
defaultValue = nil
puts defaultValue

# 4 Test with float type
seconds = 123456258.00
minutes = seconds / 60
hours = minutes / 60
days = hours / 24

puts "Input seconds:#{seconds}"
puts "Minutes:#{minutes}"
puts "Hours:#{hours}"
puts "Days:#{days}"
