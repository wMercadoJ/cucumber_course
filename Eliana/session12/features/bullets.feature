Feature:
Scenario: Attempt withdrawal using stolen card
* I have $100 in my account
* my card is invalid
* I request $50	
* my card should not be returned
* I should be told to contact the bank


#Output
Feature:

  Scenario: Attempt withdrawal using stolen card # features/bullets.feature:2
    * I have $100 in my account                  # features/bullets.feature:3
    * my card is invalid                         # features/bullets.feature:4
    * I request $50                              # features/bullets.feature:5
    * my card should not be returned             # features/bullets.feature:6
    * I should be told to contact the bank       # features/bullets.feature:7

1 scenario (1 undefined)
5 steps (5 undefined)
0m0.061s

You can implement step definitions for undefined steps with these snippets:

Given(/^I have \$(\d+) in my account$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^my card is invalid$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I request \$(\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^my card should not be returned$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I should be told to contact the bank$/) do
  pending # Write code here that turns the phrase above into concrete actions
end