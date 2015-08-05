=begin
Implement of functions	
=end

def person_age(name, age)
	name = name.upcase();
	years = age*365*24;
	puts "Hi #{name}";
	puts "Your #{age} year in hours is: #{years}";
end

def celsius_to_fahrenheit(celsius_degrees)
	fahrenheit = (((9*celsius_degrees)/5) + 32);
	return fahrenheit;
end

def fahrenheit_to_celsius(fahrenheit_degrees)
	celsius = (5*(fahrenheit_degrees - 32))/9;
end

# person_age("Oscar", 28);

puts "Please insert your name";
name = gets.strip.to_s;
puts "Please insert your age";
age = gets.chomp.to_i;
person_age(name, age);


puts "Please insert the celsius degrees to be converted to fahrenheit";
celsius = gets.strip.to_f;
puts "The value in fahrenheit for #{celsius} is #{celsius_to_fahrenheit(celsius)}";
puts "The value in fahrenheit for #{celsius} is " + celsius_to_fahrenheit(celsius).to_s;

puts "Please insert the fahrenheit degrees to be converted to celsius";
fahrenheit = gets.strip.to_f;
puts "The value in celsius for #{fahrenheit} is #{fahrenheit_to_celsius(fahrenheit)}";
puts "The value in celsius for #{fahrenheit} is " + fahrenheit_to_celsius(fahrenheit).to_s;

