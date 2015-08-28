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

Scenario: Pay with cash
Given I have a billet of \$(100|200)
When I give the money to the sales person
Then I should receive the remaining money

Scenario: Accept only digits
Given I have a string made of only digits \$([0-9]*)
When I type only digits
Then I should display an confirmation message

Scenario: Accept only lower case characters
Given I have a string made of lower case characters /$([a-z]*)
When I type only characters in lower case
Then I should display an confirmation message

Scenario: Accept any character except digits
Given I have a string made of any character except digits /$([\D]*)
When I type any character except digits
Then I should display an confirmation message