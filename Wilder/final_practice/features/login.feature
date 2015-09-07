Feature: login
Scenario Outline: user login
   Given a username <user>
	And a password <pass>
   When I enter credentials
   Then I should login and get a <message>
   Examples:
   | user     | pass     | message |
   | user0    | pass0    | failed  |
   | wil      | test     | welcome |
   | user1    | pass1    | failed  |