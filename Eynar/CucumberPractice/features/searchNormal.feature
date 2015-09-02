Feature: Search Normal

@Normal

Scenario: Search Client

Given I have a client list 
When I search the client with the name Eynar
Then I should receive $50 of purchase by name