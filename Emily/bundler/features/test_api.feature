Feature: Test API create user

@emily
Scenario:

Given I have set a connection to the application
When I send a POST request to /user.json with json
"""
    {
        "UserObject": {
        "Email": "crisclaure2303@gmail.com",
        "FullName": "Cristina Claure",
        "Password": "cristina123!@#"
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
@cris
Scenario:

Given I have set a connection to the application
When I send a "GET" request to "/user.json"
Then I expect HTTP code 200
And I expect JSON equal to
"""
{
    "Id": 562341,
    "Email": "crisclaure2303@gmail.com",
    "Password": null,
    "FullName": "Cristina Claure",
    "TimeZone": 0,
    "IsProUser": false,
    "DefaultProjectId": 3468783,
    "AddItemMoreExpanded": false,
    "EditDueDateMoreExpanded": false,
    "ListSortType": 0,
    "FirstDayOfWeek": 0,
    "NewTaskDueDate": -1,
    "TimeZoneId": "Pacific Standard Time"
}
"""