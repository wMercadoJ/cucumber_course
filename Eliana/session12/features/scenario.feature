Feature:
Scenario: Successful withdrawal from an account in credit
Given I insert my PIN
   And I have $100 in my account
When I select withdrawal 
   And I request $20 
Then $20 should be dispensed 
   And the balance is 80$
