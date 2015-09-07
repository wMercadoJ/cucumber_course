Feature: Search

@OutLine1

Scenario Outline: Search Client

Given I have a client list 
	| Name     | Id   | Price|
	| Eynar    | 10   | 50   |
	| Eynarr   | 20   | 100   |
	| Eeynar   | 30   | 150   |
When I search the client with the name <Name>
Then I should receive $<Price> of purchase by name
When I search the client with the id <Id> 
Then I should receive $<Price> of purchase by id

Examples:
	| Name     | Id   | Price|
	| Eynar    | 10   | 50   |
	| Eynarr   | 20   | 100   |
	| Eeynar   | 30   | 150   |

@Normal

Scenario: Search Client

Given I have a client list 
	| Name     | Id   | Price|
	| Eynar    | 10   | 50   |
	| Eynarr   | 20   | 100   |
	| Eeynar   | 30   | 150   |
When I search the client with the name Eynar
Then I should receive $50 of purchase by name

@Normal @OutLine1

Scenario: Search Client

Given I have a client list 
	| Name     | Id   | Price|
	| Eynar    | 10   | 50   |
	| Eynarr   | 20   | 100   |
	| Eeynar   | 30   | 150   |
When I search the client with the name Eynar
Then I should receive $50 of purchase by name