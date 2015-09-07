Feature: Practice for classes

Scenario: Create an employee with required fields
Given I have access to app with admin role
Then I create an employee only with required fields
When new employee should be displayed in the list of employees


Scenario: Workflow with a goal for an employee
Given I have installed goals module
	And an employee created
Then I create an a goal for employee
	And close the goal
When goal should have Closed Status