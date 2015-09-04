Feature: Manage Articles
    In order to make a blog
    As a author
    I want to create and manage articles

Scenario: Articles list
   Given I have 3 articles titled Pizza, Bread, Jamon 
   When I go to the list articles
   Then I should see Pizza
        And I should see Bread
        And I should see Jamon
	