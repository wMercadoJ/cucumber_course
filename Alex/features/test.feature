Feature: Make a purchase with debit card
	In order to buy a computer
	As an client
	I want to pay with a debit card

Scenario: Select the computer
Given I have the computer list
When I select the computer
Then I should request the computer to salesperson

Scenario: Pay with Debit card
Given I have the debit card into the card reader
	And card has money
When I type the PIN
Then I should receive the order print