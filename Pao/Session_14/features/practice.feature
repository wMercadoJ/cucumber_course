Feature: Write a feature file that contains 2 scenarios, each one with steps that need a step definition with:
		1. Question mark modified for singular and plural
		2. Multiple captures of data
		3. Noncapturing group

Scenario: This is scenario 01
Given 4 users are log in the system
When they start the process at the same time
Then the response time should be 45 secs

Scenario: This is scenario 02
Given I buy 5 ipads for 10 kids
When I start given them 1 ipad for 2 kids
Then the 10 kids will have ipad to play
