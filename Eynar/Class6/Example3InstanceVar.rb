
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