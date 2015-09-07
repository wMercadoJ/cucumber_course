@api_test
Feature: Test API create user

@positive
Scenario:
Given I have set a connection to todo.ly service
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

@negative
Scenario:
Given I have set a connection to todo.ly service
When I send a POST request to /users.json with json
"""
    {
  "UserObjects": {
      "Email": "use123r@email.com",
      "FullName": "Joe Blow",
      "Password": "pASswoRd"
    }
  }
"""

Then I expect HTTP code 404

@positive
Scenario: Get All Projects
Given I have set a connection to todo.ly service
When I send a GET request to /projects.json 
Then I expect HTTP code 200
And I expect JSON equal to
      """
     {
    "Id": 3468672,
    "Content": "Test",
    "ItemsCount": 0,
    "Icon": 0,
    "ItemType": 2,
    "ParentId": null,
    "Collapsed": false,
    "ItemOrder": 79,
    "Children": [],
    "IsProjectShared": false,
    "ProjectShareOwnerName": null,
    "ProjectShareOwnerEmail": null,
    "IsShareApproved": false,
    "IsOwnProject": true,
    "LastSyncedDateTime": "/Date(1441332528859)/",
    "LastUpdatedDate": "/Date(1441332523167)/",
    "Deleted": false,
    "SyncClientCreationId": null
    }
      """ 