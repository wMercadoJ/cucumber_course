Feature: find item
In order to be access the app
As a user I would like to login into the applicatoin

@find @negative
Scenario: find scpecif item
  Given I have the item 
  When I search for the item
  Then I expect the see the item

@find @possitive
Scenario: Not find a specif item
  Given I have the item apple
  When I search for the item
  Then I expect the have a message "Item not found"

