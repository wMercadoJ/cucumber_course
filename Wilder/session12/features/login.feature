Feature: user data

Scenario: login
Given a username
   And a password
When I enter credentials in login page
Then I should access the application

Scenario: edit username
Given a new username
When I change current username
Then username should be updated