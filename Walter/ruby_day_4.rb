# puts "What's your name"
# name = gets

# puts "Hi #{name}!! How are you"

# # Using gets.chomp
# puts "What's your name"
# name = gets.chomp

# puts "Hi #{name}!! How are you"

# #
# puts "Some Test".chomp('Test')
# puts "Some Test\r\n".chomp
# puts "\tRober MArtin\r\n".strip

# puts "Give me a number"
# number = gets.chomp.to_i
# bigger = number * 100
# puts  "A Bugger number is #{bigger}"

# puts "Give me a number"
# number = gets.chomp.to_f
# puts  "A Bugger number is #{number}"


# puts "Give me a number"
# number = gets.chomp.to_f
# puts  "A Bugger number is #{number}"

def multiply(a,b)
	product = a.to_i * b.to_i
	return product
end 

puts multiply(5,2)