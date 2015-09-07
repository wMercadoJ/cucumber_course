Given(/^I have an (.*?)$/) do |username|
  @username = username
end

Given(/^a (.*?)$/) do |password|
  @password = password
end

When(/^I go to the Home Page and introduce these credentials$/) do
  @greets = ["Welcome","Have a nice day","Nice to see you again"]
end

When(/^I click in Login Button$/) do 
  if @username == "Juan Perez" then
  	user_greet = "#{@greets[0]}, #{@username} ... you can start to use our application"
  elsif @username == "Pedro Fuentes" then
  	user_greet = "#{@greets[1]}, #{@username} ... you can start to use our application"
  else
  	user_greet = "#{@greets[2]}, #{@username} ... you can start to use our application"
  end
    $greets_by_user.push(user_greet)
end

Then(/^I should receive the following message:$/) do |message|
  if @username == "Juan Perez" then
  	expect($greets_by_user[0]).to eql(message.to_s)
  elsif @username == "Pedro Fuentes" then
  	expect($greets_by_user[1]).to eql(message.to_s)
  else
  	expect($greets_by_user[2]).to eql(message.to_s)
  end
end

Given(/^I have a List of the Items$/) do
  @items = Final_practice.get_list_items
end

When(/^I search the Item: (.*?)$/) do |item|
  search_state = Final_practice.is_item_in_list(item)
  if (search_state) 
    @message_item = "#{item} was found in Database"
  else
    @message_item = "#{item} was not found in Database"
  end
end

Then(/^I should see a message$/) do |message|
  expect(@message_item).to eql(message.to_s)
end
