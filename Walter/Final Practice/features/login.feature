@Final_Practice
Feature: Feature1 Final Practice

@F1Scenario1
Scenario Outline: Login Simulation
  Given I have an <Username> 
    And a <Password> 
  When I go to the Home Page and introduce these credentials
    And I click in Login Button
  Then I should receive the following message:
  """
  <Message>, <Username> ... you can start to use our application
  """       
   Examples:
	| Username       | Password   | Message | 
	| Juan Perez     | Control123 | Welcome|
	| Pedro Fuentes  | P@ssw0rd   | Have a nice day        |
	| Pablo Ramos    | Code999    | Nice to see you again  |
