require 'singleton'

class Clients
	include Singleton
	attr_accessor:client
	attr_accessor:total_priced

	def initialize()
		@client=Hash.new 
		@total_priced=Hash.new

		@client['Eynar']="10"
		@client['Eynarr']="20"
		@client['Eeynar']="30"

		@total_priced['10']=50
		@total_priced['20']=100
		@total_priced['30']=150
	end
end

Given(/^I have a client list$/) do |table|
    @ClientList= Clients.instance
end

When(/^I search the client with the name (\D+)$/) do |name|
   #Juts keep the value inserted
    @client_name= name.to_s
end

When(/^I search the client with the id (\d+)$/) do |id_client|
   #Juts keep the value inserted
    @Id= id_client.to_s
end

Then(/^I should receive \$(\d+) of purchase by name$/) do |price|
   #Just print the cash received
  puts "This is your $#{price}"
  expect(@ClientList.total_priced[@ClientList.client[@client_name]]).to eql(price.to_i)
end

Then(/^I should receive \$(\d+) of purchase by id$/) do |price|
   #Just print the cash received
  puts "This is your #{price}"
  expect(@ClientList.total_priced[@Id].to_i).to eql(price.to_i)
end

