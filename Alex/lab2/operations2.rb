=begin
This is a practique for the lab 2
Prints the Fibonnaci serie
=end

puts "Enter the Fibonnaci's number"
max = gets.chomp.to_i

a = 1
b = 1
con = 1

begin
	puts "Fibo position #{con} is: #{b}" 
	c = a + b
	a = b
	b = c
	con += 1
end while con <= max