
Feature: Login to a page
In order to be access the app
As a user I would like to login into the applicatoin
@login @possitive  @report1
Scenario Outline: Login to the app
	Given I have a list of users with passwords	
		When I login to the application with: <Login>
			And I introduce the password: <Password>
			And I login to the system
	Then I should see "Welcome, have a nice day"
	Examples:
		|Login 	|Password 	|
		|cpmn	|admin	|
		|juan	|admin	|
		|maria	|admin	|

@login @possitive @report1
Scenario Outline: Login to the app
	Given I have a list of users with passwords	
		When I login to the application with: <Login>
			And I introduce the password: <Password>
			And I login to the system
	Then I should see "Sorry Try Again"
	Examples:
		|Login 	|Password 	|
		|cpmn	|admin1	|
		|juan	|admin1	|
		|maria	|admin1	|
