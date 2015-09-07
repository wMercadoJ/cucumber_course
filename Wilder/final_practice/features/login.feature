Feature: login
Scenario: user login
   Given a username <user>
	And a password <pass>
   When I enter credentials
   Then I should login
   Examples:
   | user     | pass     | mess    |
   | user0    | pass0    | failed  |
   | wil      | test     | welcome |
   | user1    | pass1    | failed  |