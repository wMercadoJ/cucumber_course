Feature: Practice2 Day14

Scenario: Buying Apples in the supermarket 
	Given I visit to the supermarket
	When I buy 1 apple 
		And 1 pear to do a fruit salad
	Then I will pay $1 dollar for each Apple 
		And I will pay $3 dollars for each Pear
	Then I will pay $4 in Cash

Scenario: Buying Apples in the supermarket 
	Given I visit to the market
	When I buy 10 apples 
		And 15 pears to do a fruit salad
	Then I will pay $2 dollars for each Apple 
		And I will pay $3 dollars for each Pear
	Then I will pay $65 with Credit Card