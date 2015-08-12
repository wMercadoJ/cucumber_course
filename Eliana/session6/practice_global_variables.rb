$example_of_global = 6

module ModuleTest
	$example_of_global = $example_of_global + 1
	puts "Inside module"
	puts $example_of_global
end

def method_test
	$example_of_global = $example_of_global + 2
	puts "Inside method"
	puts $example_of_global
end

class Some_test
	$example_of_global = $example_of_global + 3
	puts "Inside class"
	puts $example_of_global
end

#method_test
puts "Inside toplevel"
puts $example_of_global
puts global_variables.include? :$example_of_global