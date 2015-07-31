
=begin
@author = Oscar Tapia - Jalasoft
Implementation of code for showing the usage of 
mathematic operators and inserting variables in a string	
=end

# Declare integers
a = 4;
b = 2;

#Declare string
cad1 = "This is a sample of a string";
cad2 = "This is another sample of a string";

#Declare variables with mathematic operations
c = a + b;
d = a - b;
e = a * b;
f = a % b;
g = a / b;

#Prints mathematic operations in a string
puts "The result of addition of 4 and 2 is #{4 + 2}";
puts "The result of substraction of 4 and 2 is #{4 - 2}";
puts "The result of product of 4 and 2 is #{4 * 2}";
puts "The result of module of 4 and 2 is #{4 % 2}";
puts "The result of division of 4 and 2 is #{4 / 2}";

print "\n";

#Prints mathematic operations using variables inside the string
puts "The result of the addition of #{a} and #{b} is #{a + b}";
puts "The result of the substraction of #{a} and #{b} is #{a - b}";
puts "The result of the product of #{a} and #{b} is #{a * b}";
puts "The result of the module of #{a} and #{b} is #{a % b}";
puts "The result of the division of #{a} and #{b} is #{a / b}";

print "\n";

#Prints mathematic operations as variables
puts "The result of the addition of #{a} and #{b} is #{c}";
puts "The result of the substraction of #{a} and #{b} is #{d}";
puts "The result of the product of #{a} and #{b} is #{e}";
puts "The result of the module of #{a} and #{b} is #{f}";
puts "The result of the division of #{a} and #{b} is #{g}";
# puts "The result of the operation with non-existing variables is #{no_exist}"

print "\n";

#Prints concatenation of a strings
puts "In the example below i will concatenate two strings:";
puts "#{cad1} #{cad2}";