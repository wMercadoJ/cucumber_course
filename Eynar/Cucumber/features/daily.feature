Feature: 

Scenario: go to lunch 

Given I have credit in my account
When I buy potato with Bs 10
	And  I buy meet  with Bs 5 
	And  I buy rice with Bs 2
Then I should lunch 


Scenario: go to work

Given I wake up
When I take a shower
	And I dress up
	And I walk to the job
Then I arrive to the work
