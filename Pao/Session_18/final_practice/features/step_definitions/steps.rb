user_access = User.instance

Given(/^I have a list of users with passwords$/) do
  
  user_access.define_login_pass("cpmn", "admin")
  user_access.define_login_pass("juan", "admin")
  user_access.define_login_pass("maria", "admin")
  #p user_access.get_users()
end

When(/^I login to the application with: ([^"]*)$/) do |login|
  @login = login
  #p @login
end

When(/^I introduce the password: ([^"]*)$/) do |password|
  @password = password
  #p @password
end

When(/^I login to the system$/) do
  @message = user_access.login_to_system(@login, @password)
end

Then(/^I should see "([^"]*)"$/) do |message|
  expect(@message).to eq message
end

item = Items.instance

Given(/^I have a list of item$/) do
  item.define_item("apple")
  item.define_item("orange")
  item.define_item("banana")
end

When(/^I search item: ([^"]*)$/) do | item|
  @message =item.search_item(item.to_s)
  #p @item.Items
end

Then(/^I should see item message: "([^"]*)"$/) do |message|
  expect(@message).to eq message
end


