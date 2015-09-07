
Feature: Login to a page
In order to be access the app
As a user I would like to login into the applicatoin

@login @negative
Scenario: Login to the app
  Given I have the login paola
    And I have the password pass
  When I introduce the login and the password in to the app
  Then I expect a message "Welcome, Have a nice day"

@login @possitive
Scenario: login to app with correct data
  Given I have the login cpmn
    And I have the password admin
  When I introduce the login and the password in to the app
  Then I expect a message "Welcome, Have a nice day"

