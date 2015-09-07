@api_test
Feature: Test API create user

Scenario:

Given I have set a connection to todo.ly service
When I send a GET request to /user.json with json
Then I expect HTTP code 200
	And I expect JSON equal to
    """
    {
      "Id": 530897,
  	  "Email": "claudia.paola@gmail.com",
  	  "Password": null,
  		"FullName": "Paola Munoz Navarro Updated",
  		"TimeZone": 0,
  		"IsProUser": false,
  		"DefaultProjectId": 3335594,
  		"AddItemMoreExpanded": false,
  		"EditDueDateMoreExpanded": false,
  		"ListSortType": 0,
  		"FirstDayOfWeek": 0,
  		"NewTaskDueDate": -1,
  		"TimeZoneId": "Pacific Standard Time"
    }
    """
