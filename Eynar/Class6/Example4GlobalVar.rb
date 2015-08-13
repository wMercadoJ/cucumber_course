=begin
This example is to review the global variables
=end
$example_of_global=6

module ModuleTest
	puts "instance Module"
	puts $example_of_global
end

def method_test
	puts "instance Method"
	puts $example_of_global
end

class Some_test
	puts "instance Class"
	puts $example_of_global
end

method_test
puts "inside top level"
puts $example_of_global

# this line of code is to check if exist the global variable
puts global_variables.include? :$example_of_global