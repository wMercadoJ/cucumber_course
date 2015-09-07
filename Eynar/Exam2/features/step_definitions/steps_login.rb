Given(/^I a user name (\D+)$/) do |user_name|
 @user=user_name
end

Given(/^a password (\D+)$/) do |password|
 @password=password
end

When(/^I do click in sing\-on$/) do
  puts "The user did click on sign on"
end

Then(/^the message should be (\D+)$/) do |expected_message|
  @expected="Welcome "+@user
  expect(@expected).to eql(expected_message.to_s) 
end
