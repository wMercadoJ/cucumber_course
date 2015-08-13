=begin
def test_local_variables
	value = 5
	another_value = 10
	addition_of_values = value + another_value
	puts addition_of_values
	puts local_variables #local_variables as a comodin to display the name of local variables not their values
end

test_local_variables
#puts value #value is not recognize as variable out the method
=end

class Customer
	def initialize (id, name, addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end

	def display_details()
		puts "Customer id #{@cust_id}"
		puts "Customer name #{@cust_name}"
		puts "Customer address #{@cust_addr}"
	end
end

#Create Objects
cust1 = Customer.new "1", "John", "Wisdon Apartments, Ludhiya" #Instantiation without Parenthesis 
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
cust3 = Customer.new 

#Call methods
cust1.display_details()
cust2.display_details
cust3.display_details