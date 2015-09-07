
Feature: Create, Modify and Deletes Boards
In order to manage de boards
As a user I would like to create, modify and delete some boards

@board @ListBoard @WF01 @tests
Scenario: List of Boards from my trello user
  Given I have set a connection to trello.com service
  When I send a GET request to /members/me/boards
  Then I expect HTTP code 200

@board @CreateBoard
Scenario: Create a new Board
  Given I have set a connection to trello.com service
  When I send a POST request to /boards with json
    """
      {s
        "name": "NewBoad",
        "desc": "Description of the test"
      }
    """
  Then I expect HTTP code 200
    And I expect JSON at "name" should be "NewBoad"
    And I expect JSON at "desc" should be "Description of the test"

@board @UpdateBoard
Scenario: Update a existing Board
  Given I have set a connection to trello.com service
  When I send a PUT request to /boards/55ec9d316395340dea191e13 with json
    """
      {
        "name": "Test02",
        "desc": "Description of the test02"
      }
    """
  Then I expect HTTP code 200
    And I expect JSON at "desc" should be "Description of the test02"
    And I expect JSON at "name" should be "Test02"
