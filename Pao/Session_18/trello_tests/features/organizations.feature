
Feature: Create, Modify and Deletes Organizations in Trello
In order to manage my organiztions
As a user I would like to create, modify and delete some Organizations

@Organizations @ListOrganizations @WF01
Scenario: List all the organizations
	Given I have set a connection to trello.com service
	When I send a GET request to /members/me/organizations
	Then I expect HTTP code 200
		And I expect JSON list not empty

@Organizations @CreateOrganization @WF01
Scenario: Create a new organization
	Given I have set a connection to trello.com service
	When I send a POST request to /organizations with json
	"""
	{
    	"name": "test",
    	"desc": "Primera Organizacion",
    	"displayName": "TEST01"
	}
	"""
	Then I expect HTTP code 200
		And I expect JSON at "displayName" should be "TEST01"

@Organizations @DeleteOrganization @WF01
Scenario: Delete a specific organization
	Given I have set a connection to trello.com service
		And I send a GET request to /members/me/organizations
		And I get the id "name" for organization as "TEST01"
	When I send a DELETE request to /organizations/
	Then I expect HTTP code 200
		And I expect JSON equal to
		"""
		{
  			"_value": null
		}
		"""
