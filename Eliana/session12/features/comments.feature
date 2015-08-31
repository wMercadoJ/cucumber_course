# This feature covers the account transaction and hardware-driver modules
Feature: Withdraw Cash
	In order to buy beer
	As an account holder
	I want to withdraw cash from the ATM
# Can't figure out how to integrate with magic wand interface

Scenario: Withdraw too much from an account in credit
Given I have $50 in my account
# When I wave my magic wand
	And I withdraw $100
Then I should receive $100

Scenario: Login into the application
Given I have an user account 
      And an user password
When I type the data into the aunthentication form 
     And I click login button
Then I should login into the application

Scenario: Error message is displayed when a bad user password is type
Given I have an user account 
      But my user password is invalid
When I type the data into the aunthentication form 
     And I click login button
Then an error message should be displayed

#Output
3 scenarios (3 undefined)
13 steps (13 undefined)
0m0.110s

You can implement step definitions for undefined steps with these snippets:

Given(/^I have \$(\d+) in my account$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I withdraw \$(\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should receive \$(\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have an user account$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^an user password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I type the data into the aunthentication form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click login button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should login into the application$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^my user password is invalid$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^an error message should be displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
