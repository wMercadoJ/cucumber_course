@api_test
Feature: Test API create user

Scenario:

Given I have set a connection to the application 

When I send a POST request to /user.json with json
"""
    {
  "UserObject": {
    	"Email": "use123r@email.com",
    	"FullName": "Joe Blow",
    	"Password": "pASswoRd"
	  }
	}
"""

Then I expect HTTP code 200
And I expect JSON equal to
      """
      {
       "ErrorMessage": "Invalid Email Address",
       "ErrorCode": 307
      }
      """ 

When I send a PUT request to /user.json with json

"""
    {
  "UserObject": {
    	"Email": "use123r@email.com",
    	"FullName": "Joe Blow",
    	"Password": "pASswoRd"
	  }
	}
"""

Then I expect HTTP code 200

When I send a GET request to /user.json
Then I expect HTTP code 200
And I expect JSON equal to
"""
{
    "Id": 533160,
    "Email": "anaeli.nce@gmail.com",
    "Password": null,
    "FullName": "Eliana Navia",
    "TimeZone": 0,
    "IsProUser": false,
    "DefaultProjectId": 3355055,
    "AddItemMoreExpanded": false,
    "EditDueDateMoreExpanded": false,
    "ListSortType": 0,
    "FirstDayOfWeek": 0,
    "NewTaskDueDate": -1,
    "TimeZoneId": "Pacific Standard Time"
}
"""