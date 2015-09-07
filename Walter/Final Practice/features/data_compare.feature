@Final_Practice
Feature: Data Compare 

@F2Scenario1
Scenario: Customer Search an exitent Item in database
   Given I have a List of the Items 
   When I search the Item: Item1
   Then I should see a message
   """
   Item1 was found in Database
   """  

@F2Scenario2
Scenario: Customer Search a non-exitent Item in database
   Given I have a List of the Items 
   When I search the Item: Item15
   Then I should see a message
   """
   Item15 was not found in Database
   """  