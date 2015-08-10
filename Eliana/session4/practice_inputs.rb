=begin

puts "What is your name?"
name = gets

puts "Hi #{name}!! How are you today?"

puts "What is your name?"
name = gets.chomp

puts "Hi #{name}!! How are you today"
=end

=begin
puts "Some Test".chomp(' Test') # => "Some"
puts "Some Test\r\n".chomp # => "Some Test"
puts "\tRobert Martin\r\n".strip # => "Robert Martin"
=end

=begin
#Practice integer to_i
puts "Please user 1 insert your birth year "
birthYearUser1 = gets.chomp.to_i 
puts "Please user 2 insert your birth year "
birthYearUser2 = gets.chomp.to_i 
ageUser1 = 2015  - birthYearUser1 
ageUser2 = 2015  - birthYearUser2 

puts "The age of user 1 is: #{ageUser1}"
puts "The age of user 2 is: #{ageUser2}"

puts ageUser1 > ageUser2 ? "User 1 is older than user2" : "User 1 is younger than user 2"
=end

=begin
#Practice float to_f
puts "Type a number:"
number = gets.chomp.to_f
convert = number * 6.94

puts "The number in dollars is: #{convert}"
=end

#Practice string to_s
puts "Type a number between 1 a 4:"
season = gets.chomp.to_s

case season
when "1"
   puts "The season number " + season + " is : summer" 
when "2"
	puts "The season number " + season + " is : autumn" 
when "3"
   puts "The season number " + season + " is : winter" 
when "4"
	puts "The season number " + season + " is : spring"
else
	puts "The value " + season + " is invalid"
end 

