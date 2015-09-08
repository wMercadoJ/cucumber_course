Feature: rest api test
@api_test
Scenario: list projects
Given I have set a connection to todo.ly service
When I send a GET request to /projects.json
Then I expect HTTP code 200
	And I expect response contents
    """
    "Id":3465382,"Content":"project1","ItemsCount":0,"Icon":0,"ItemType":2
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
	And I expect response contents
    """
	"Content":"project3","ItemsCount":0,"Icon":1,"ItemType":2,"ParentId":null
	"""