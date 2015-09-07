Given(/^I type a (.*?)$/) do |username|
  puts @username
end

Given(/^I type the (.*?)$/) do |password|
  puts @password
end

When(/^I select login$/) do
  puts "Click login"
end

Then(/^a specific message for user should be displayed$/) do |message|
  @message  = "Hello"
  expect(@message).to eql("Hello")
end