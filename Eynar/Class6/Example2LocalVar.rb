=begin description
Example 2, context of variables
=end

def test_local_variable
	value=5
	another_value=10
	addition_of_value= value*another_value
	puts "result : #{addition_of_value}"
	
	# Display all variables local
	puts local_variables
end

#test_local_variable
#puts value

class Customer
	def initialize(id, name, addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
	
	def display_detail()
		puts"customer id :#{@cust_id}"
		puts"customer name :#{@cust_name}"
		puts"customer address :#{@cust_addr}"
	end
end

#create objects
cust1=Customer.new("A1","Name1","Adress1")
cust2=Customer.new("A2","Name2","Adress2")

#display methods
cust1.display_detail
puts cust2.display_detail