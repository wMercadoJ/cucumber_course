Feature: Compare data from a list to define if the item exist or not

@scenario_1
Scenario: positive case
Give I search an item
When I send the value of a valid item
Then a successful should be displayed

@scenario_2
Scenario:negative case
Give I search an item
When I send the value of a not exist item
Then an error message should be displayed