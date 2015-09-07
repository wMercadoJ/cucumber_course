Given(/^a username (.*?)$/) do |username|
  @username = username
end

Given(/^a password (.*?)$/) do |password|
  @password = password
end

When(/^I enter credentials$/) do
  @message = (@username == "wil" && @password == "test") ? "welcome" : "failed"
end

Then(/^I should login and get a (.*?)$/) do |message|
  expect(@message).to eql(message)
end
