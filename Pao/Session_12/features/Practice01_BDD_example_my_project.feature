Feature: This is a feature

Scenario: Start the optimize process for an acquisition scenario
Given a Scenario Test in the acquisiton list screen
	And the scenario status is READY
	And The scenario type is WHAT-IF 
When I click in the scenario 
	And click in optimize button 
Then I should see the status of scenario change to RUNNING
	And Type should change to WORKING

Scenario: Override the optimization Price for a car class in specfic date
Given the date 01/01/1016 
	And a car class A
When I set ovirride value to $45
	And accept the new price
Then I should see the price changed to $45
