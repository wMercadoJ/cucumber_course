Feature: Simulate a search of a total priced fo a customer search

@outline
Scenario Outline: Search Total Price from Client
   Given I have a list of clients
   When I search by client name: <Name>
   Then I should see the total priced: $<Total>
   When I search by client ID: <ID>
   Then I should see the total priced: $<Total> 
   
	Examples:
	| ID 	| Name 			| Total |
	| 100   | Paola Munoz	| 50	|
	| 200   | Karime Salomon| 100	|
	| 300   | Franz Perez   | 200	|

@normal
Scenario: Verify the Client exist in the list
   Given I have a list of clients
   When I search by client name: Paola Munoz
   Then I should see in the list the client name: Paola Munoz
 