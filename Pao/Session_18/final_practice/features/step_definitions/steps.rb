
Given(/^I have the login (.*?)$/) do |login|
  @login_user = login
  user_access.define_login_pass("cpmn", "admin")
end

Given(/^I have the password (.*?)$/) do |password|
  @password = password
end

When(/^I introduce the login and the password in to the app$/) do
  @message = user_access.login_to_system(@login, @password)

end

Then(/^I expect a message "([^"]*)"$/) do |message_expected|
  expect(@message.to_s).to eql message_expected.to_s
end

Given (/^I have the item (.*?)$/) do |item|
end

When (/^I search for the item$/) do
end

Then (/^I expect the have a message "(.*?)"$/) do |message|
end

Then (/^I expect the see the item "(.*?)"$/) do |message|
end