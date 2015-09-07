Feature: Login in the application
@scenario_1
Scenario: Sign in 
Given I type a <username>
      And I type the <password>
When I select login
Then a specific message for user should be displayed
|username| password|message        |
|ana     | 123     |Wellcome       |
|ali     | 345     |Have a nice day|
|anderson| 678     |Hi             |
|cata    | 901     |Hello          |