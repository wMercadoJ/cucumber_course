Feature:
Scenario: Attempt withdrawal using stolen card
Given I have $100 in my account
	But my card is invalid
When I request $50
Then my card should not be returned
	And I should be told to contact the bank

####Output
	Feature:

  Scenario: Attempt withdrawal using stolen card # features/negative.feature:2
    Given I have $100 in my account              # features/negative.feature:3
    But my card is invalid                       # features/negative.feature:4
    When I request $50                           # features/negative.feature:5
    Then my card should not be returned          # features/negative.feature:6
    And I should be told to contact the bank     # features/negative.feature:7

1 scenario (1 undefined)
5 steps (5 undefined)
0m0.057s

You can implement step definitions for undefined steps with these snippets:

Given(/^I have \$(\d+) in my account$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^my card is invalid$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I request \$(\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^my card should not be returned$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be told to contact the bank$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
