=begin
The usage of some commands for strings

"Some Test".chomp('Test') # => "Some"
"Some test\r\n".chomp # => "Some Test"
"\tSome Test\r\n".strip # => "Some Test"
=end

puts "Please insert a name:\n";
name = gets;
str = "\tSome Test\r\n";
nombre = "Juan Valdes";
print str;

puts "Some Test".chomp('Test');
puts "Hi #{nombre.chomp('Valdes')}, my name is Bart";
puts "Hi #{name.chomp}, my name is Bart";
puts "Hi #{str.strip}, my name is Bart";

# Usage of to_i
puts "Give me a number:";
number = gets.chomp.to_i;
puts number;
bigger = number * 100;
puts "A bigger number is #{bigger}";
	
# Usage of to_f
puts "Give me a float number:";
number = gets.chomp.to_f;
puts number;
bigger = number * 100;
puts "A bigger number is #{bigger}";

# Usage of to_s
puts "Give me a string";
string = gets.chomp.to_s;
puts string;