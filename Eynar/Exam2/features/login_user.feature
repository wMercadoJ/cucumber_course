Feature: Login User

@F1S1 @Full

Scenario Outline: Login User
   Given I a user name <User> 
   And a password <Password> 
   When I do click in sing-on
   Then the message should be <Message>
   Examples:
	| User     | Password   | Message         | 
	| Eynar    | abc        | Welcome Eynar   | 
	| Eynarr   | cde        | Welcome Eynarr  | 
	| Eynarrr  | fgh        | Welcome Eynarrr | 

