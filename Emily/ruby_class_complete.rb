# Create a script - Ruby Variables
# August 10, 2015
# see some examples below:

class Customer
	def initialize(id, name, addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end
	def display_details()
		puts "Customer id: #{@cust_id}"
		puts "Customer name: #{@cust_name}"
		puts "Customer address: #{@cust_addr}"
	end

end

# Create Objects
cust_1 = Customer.new("1", "John", "Wsss Appp, Ludh")
cust_2 = Customer.new("2", "Poul", "New Eppp, Kandala")

# call methods
cust_1.display_details
cust_2.display_details

# Global variables

$example_of_global = 6
module ModuleTest
	puts "Inside module"
	puts $example_of_global
end

def method_test
	puts "Inside method"
	puts $example_of_global
end

class Some_test
	puts "Inside class"
	puts $example_of_global
end

method_test
puts "Inside toplevel"
puts $example_of_global
puts global_variables.include? :$example_of_global

