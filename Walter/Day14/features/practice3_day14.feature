Feature: Practice3 Day14

Background: Wake up early in the morning all work days
    Given I wake up early in the morning
   	When I get up from my bed 
    Then I make my bed
    	And I take a shower 
    	And I change my clothes

Scenario: Weekend activities
	Given I have my room messy
	When I clean and sort all my bed 
	Then I found some garbage that needs to be dumping trash
	
Scenario: Work Days activities
	Given I go to my Work 
		And I have the following table with my tasks
		|       | Status |
		| Task1 |        |
		| Task2 |        |
		| Task3 |        |
	When I start with the Task1 I change the Status to In Progress	
	Then the Table of my task should look like this:
		|       | Status |
		| Task1 |  In Progress  |
		| Task2 |   	 |
		| Task3 |        |	

	Given Task1 is completed I marked this task as Done 	
	Then the Table of my task should look like this:
		|       | Status |
		| Task1 |  Done  |
		| Task2 |        |
		| Task3 |        |		
	Then I start with the Task2 I change the Status to In Progress
		And the Table of my task should look like this:
		|       | Status |
		| Task1 |  Done  |
		| Task2 |  In Progress |
		| Task3 |        |
