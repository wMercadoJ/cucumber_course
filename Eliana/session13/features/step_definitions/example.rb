#You can implement step definitions for undefined steps with these snippets:

Given(/^I have \$(\d+) in my Account$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given /I have deposited \$(...) in my Account/ do |amount|
# TODO: code goes here
end

Given /I have deposited \$(.*) in my Account/ do |amount|
# TODO: code goes here
end

#Character class
Given /I have deposited \$([0123456789]*) in my Account/ do |amount|
# TODO: code goes here
end

Given /I have deposited \$([0123456789]*) in my Account/ do |amount|
# TODO: code goes here
end

Given /I have deposited \$([0-9]*) in my Account/ do |amount|
# TODO: code goes here
end

# shortcat
Given /I have deposited \$(\d*) in my Account/ do |amount|
# TODO: code goes here
end

#Given /I have deposited \$(100|250) in my Account/ do |amount|
# TODO: code goes here
#end
 

Given(/^add person form has a text field that accept only numbers$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I type a number \\\$\(\[(\d+)\-(\d+)\]\*\)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^an confirmation message should be displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^add person form has a text field that accept lower case characters$/) do

  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I type only characters in lower case \/\$\(\[a\-z\]\*\)$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should display an confirmation message$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^add person form hasta a text field that accept any character except digi
ts$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I type any character except digits \/\$\(\[\\D\]\*\)$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
