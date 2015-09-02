class Client
	attr_accessor :client_list
	attr_accessor :total_priced_list
 	
 	def initialize
 		@client_list = { "bob" => 123, "larry" => 456, "jimmy" => 789, "jerry" => 999}
 		@total_priced_list = { "123" => 100, "456" => 70, "789" => 60, "999" => 55}		
 	end
end  

def singleton_client
	@singleton_client ||= Client.new
end


Given(/^I have a List of the Clients$/) do
	singleton_client.total_priced_list["123"]
end

When(/^I search the Client name: (\w+) in the list$/) do |client_name|
  	@client_id = singleton_client.client_list[client_name]	
end

Then(/^I should see the ID: (\d+)$/) do |client_id|
	@total_priced = singleton_client.total_priced_list[client_id]	
	expect(@client_id).to eql(client_id.to_i) 
  
end

Then(/^the Total Priced should be \$(\d+)$/) do |total_priced|
	expect(@total_priced).to eql(total_priced.to_i) 
end

When(/^I search the Client: (\w+) in the list$/) do |client_name|
  	@client_id = singleton_client.client_list[client_name]	
  	if @client_id == nil
  		@status = "The Customer was not found"
  	elsif @client_id != nil
  		@status = "The Customer was found"
  	end  			
end

Then(/^I should receive an error mention: (The Customer was found|The Customer was not found)$/) do  |status|
  expect(@status).to eql(status)
end