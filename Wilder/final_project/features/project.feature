Feature: rest api test
@api_test
Scenario: list projects
Given I have set a connection to todo.ly service
When I send a GET request to /projects.json
Then I expect HTTP code 200
	And I expect JSON equal to
    """
	[
		{
		"Content": "project1",
		"Icon": 0,
		"Deleted": false
		},
		{
		"Content": "project2",
		"Icon": 0,
		"Deleted": false
		}		
	]
    """
      
Scenario: create project
Given I have set a connection to todo.ly service
When I send a POST request to /projects.json with json
"""
{
    "Content": "project3",
    "Icon": "1"
}
"""
Then I expect HTTP code 200
	And I expect JSON equal to
    """
    {
		"Content": "project3",
		"ItemsCount": 0,
		"Icon": 1,
		"ItemType": 2,
		"ParentId": null,
		"Collapsed": false
    }
	""" 