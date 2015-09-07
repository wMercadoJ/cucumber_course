@api_final
Feature: Test API create user

  Scenario:

    Given I have set a connection to the application
    When I send a POST request to /user.json with json
    """
    {
    	"Email": "walker1@test.com",
    	"FullName": "Walker1 Test",
    	"Password": "Control123"
	}
    """
    Then I expect HTTP code 200

    When I send a POST request to /user.json with json
    """
    {
    	"Email": "walker2@test.com",
    	"FullName": "Walker2 Test",
    	"Password": "Control123"
	}
    """
    Then I expect HTTP code 200

    When I send a POST request to /user.json with json
    """
    {
    	"Email": "walker3@test.com",
    	"FullName": "Walker3 Test",
    	"Password": "Control123"
	}
    """
    Then I expect HTTP code 200

    Then I send a PUT request to .* with json
    """
    {
    	"Email": "walker1@test.com",
    	"Password": "Control123"
	}
    """

    Then I send a PUT request to .* with json
    """
    {
    	"Email": "walker2@test.com",
    	"Password": "Control123"
	}
    """

    Then I send a PUT request to .* with json
    """
    {
    	"Email": "walker3@test.com",
    	"Password": "Control123"
	}
    """

  Scenario Outline: Simulate login attempts
    Given I insert an <Username> in login page
    When I insert a <Password> in login page
    Then I expect this message <Message> in the response
  Examples:
    | Username    | Password      | Message                |
    | Walker1     | Control123    | Login Successful       |
    | Walker2     | Control123    | Login Successful       |
    | Walker3     | Control123    | Login Successful       |
