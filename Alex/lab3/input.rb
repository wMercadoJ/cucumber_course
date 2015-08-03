puts "Some Test".chomp(' ') # => "Some"
puts "Some Test\r\n".chomp # => "Some Test"
puts "\tRobert Martin\r\n".strip # => "Robert Martin"

puts "Give me a number"
number = gets.chomp.to_f
bigger = number * 100
puts "A bigger number is #{bigger/10}."