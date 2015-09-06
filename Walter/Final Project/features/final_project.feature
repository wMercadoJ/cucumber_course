@api_test
Feature: Final Project for Ruby class

@Projects @Regression @Sanity @Scenario1
Scenario Outline: Create Projects
	Given I have set a connection to todo.ly service
	When I send a POST request to /projects.json with json
	"""
		{
		"Content": "<Project>",
		"Icon": "<Icon>"
		}
	"""
	Then I expect HTTP code 200
		And I expect JSON equal to
	"""
		{
		"Content": "<Project>",
		"ItemsCount": 0,
		"Icon": <Icon>,
		"ItemType": 2,
		"ParentId": null,
		"Collapsed": false
		}
	""" 
	Examples:
	| Project | Icon | 
	| Ruby_Project1 | 2 | 	
	| Ruby_Project2 | 3 | 
	| Ruby_Project3 | 4 | 

@Projects @Sanity @Scenario2
Scenario: Get Default Projects in account
	Given I have set a connection to todo.ly service
	When I send a GET request to /projects.json
	Then I expect HTTP code 200
		And I expect a list of JSON equal to
	"""
	[
		{
		"Content": "Home",
		"Icon": 1,
		"Deleted": false
		},
		{
		"Content": "Personal",
		"Icon": 0,
		"Deleted": false
		}		
	]
	"""
@Tasks @Regression @Sanity @Scenario3
Scenario Outline: Create Tasks in specific Project
	Given I have set a connection to todo.ly service
		When I send a POST request to /items.json with json
		"""
			{
			"Content": "<Task>",
			"ProjectId": "<Project>"
			}
		"""
		Then I expect HTTP code 200
			And I expect JSON for the Item equal to
		"""
			{
			"Content": "<Task>",
			"ItemType": 1,
			"ProjectId": <Project>,
			"Checked": false
			}
		""" 
		Examples:
		| Task | Project |
		| Task_Home1 | 3416241 |
		| Task_Home2 | 3416241 |
		| Task_Personal1 | 3469006 |
		| Task_Personal2 | 3469006 |
		| Task_Personal3 | 3469006 |

@Develepment
Scenario: Delete All Items 