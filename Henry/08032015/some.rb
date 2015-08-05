puts "Some Test".chomp('Test')
puts "Some Test\r\n".chomp
puts "\tRobert Martin\r\n".strip

puts "Give me a number:"
# number = gets.chomp
number = gets.chomp.to_f
# bigger = number * 100
puts "A floating number is #{number}."
