Feature: Scenarios my Project
Practice of Scenarios Ruby

Scenario: Testing of Tasks in my project
	Given I have assigned tasks 
		And All are in None state 
	When I started one of them, I change the status to In Progress
	Then I should submit bugs for the task
	Then I should closed the task if no high issue are submittede

Scenario: Bug Validation in my project
	Given I have assigned a Bug 
	When I change the Status to In Progress
		And I prepare the environments to validate the Bug
	Then I should review all the around scenarios to the Bug
		And If all is working as expected I should close the Bug 
		And Add a note in the Bug with all scenarios tested
