Feature: Compare Data

@F2S1 @Full
Scenario:Look for an specific item and expect to find it

Given I have a list 
When I search the client with the name Eynar
Then I should receive the message Item was found

@F2S2 @Full
Scenario:Look for an specific item and expect to not find it, but see a message that item was not found

Given I have a list 
When I search the client with the name Jose
Then I should receive the message Item was not found

