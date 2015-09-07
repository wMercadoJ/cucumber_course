Given(/^I have a list$/) do
   @ClientList= Clients.instance
end

When(/^I search the client with the name (\D+)$/) do |client_name|
  @message_expected=@ClientList.isItemInTheArray(client_name)
end

Then(/^I should receive the message (\D+)$/) do |message|
  expect(@message_expected).to eql(message) 
end
