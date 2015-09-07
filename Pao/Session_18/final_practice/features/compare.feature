Feature: Items
In order to be access the app
As a user I would like to login into the applicatoin


@report1
Scenario Outline: find a item
	Given I have a list of item
		When I search item: <Item>
	Then I should see item message: "Found"
	Examples:
		|Item 	|
		|apple	|
		|orange	|
		|banana	|

@report2
Scenario Outline: Login to the app
	Given I have a list of item
		When I search item: <Item>
	Then I should see item message: "Not Found"
	Examples:
		|Item 	|
		|apple1	|
		|orange2	|
		|banana3	|