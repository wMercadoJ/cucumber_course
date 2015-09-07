Feature: Practice Customer Search

@outline
Scenario Outline: Customer Search using OutLine
   Given I have a List of the Clients 
   When I search the Client name: <Client> in the list
   Then I should see the ID: <ID>
      And the Total Priced should be <Total_Priced>
   Examples:
	| Client | ID   | Total_Priced | 
	| bob    | 123  |   $100       | 
	| larry  | 456  |   $70        | 
	| jimmy  | 789  |   $60        | 
	| jerry  | 999  |   $55        | 

@normal
Scenario: Customer Search that is not in the List
   Given I have a List of the Clients 
   When I search the Client: Juan in the list
   Then I should receive an error mention: The Customer was not found

@normal
Scenario: Customer Search that is in the List 
   Given I have a List of the Clients 
   When I search the Client: bob in the list
   Then I should receive an error mention: The Customer was found