Feature: Practice
Write a feature file that contains 2 scenarios, each one with steps that need a step definition with:
1. Question mark modified for singular and plural
2. Multiple captures of data
3. Noncapturing group


Scenario: This is scenario 01
Given I buy 1 apple
      And I have 20 $ in efective
      And cost x unity is 5 $ 
When I pay for the apple 
Then the change returned should be 15$

Scenario: This is scenario 02
Given I buy 7 apples
      And I have 50 $ in money
      And cost x unity is 5 $ 
When I give money for the apples
Then the change returned should be 15$