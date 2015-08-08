# Create a script in order to practice basic math operators
# August 3, 2015
# see some examples below:

# chomp vs strip
puts "Some Test".chomp('Test')
puts "Some Test\r\n".chomp
puts "\tRobert Martin\r\n".strip

puts "Give me a number:"
number = gets.chomp.to_i
bigger = number * 100
puts "A bigger number is #{bigger}."


puts "Give me a number: "
number = gets.chomp.to_f
puts "A floating number is: #{number}."