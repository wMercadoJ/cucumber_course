Feature: 

Scenario: go to lunch

Given I have credit in my account
When I buy potato
	And  I buy meet 
	And  I buy rice
Then I have a lunch to eat


Scenario: go to work

Given I wake up
When I take a shower
	And I dress up
	And I walk to the job
Then I arrive to the work
