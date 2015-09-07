Given(/^a username (.*?)$/) do |username|
  @username = username
end

Given(/^a password (.*?)$/) do |password|
  @password = password
end

When(/^I enter credentials$/) do
  puts "validating credentials.."
end

Then(/^I should login$/) do
  expected_username = "wil"
  expected_password = "test"
  expect(@username).to eql(expected_username)
  expect(@password).to eql(expected_password)
end