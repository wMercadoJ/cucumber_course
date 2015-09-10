Feature: Customer search

@outline_scenario
Scenario Outline: Simulate a search of a total priced for a list of clients
   Given I have a list of clients
   When I search by client name: <Name>
   Then I should see the total priced: $<Total>
   When I search by client ID: <ID>
   Then I should see the total priced: $<Total> 
   
	Examples:
	| ID 	  | Name 			| Total |
	| 100   | Client 1	   | 50	  |
	| 200   | Client 2      | 100	  |
	| 300   | Client 3      | 200	  |

@normal_scenario
Scenario: Simulate a search of a client and verify the client exist in the list
   Given I have a list of clients
   When I search by client name: Client 2
   Then I should see the client name: Client 2