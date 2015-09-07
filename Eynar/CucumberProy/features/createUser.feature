
Feature: Test API create user

@Scenario1 @Full
Scenario: Get user information

Given I have set a connection to todo.ly service
When I send a GET request to /user.json
Then I expect HTTP code 200
And I expect JSON equal to
"""
     {"Id":532813,"Email":"eynar.pari@gmail.com","Password":null,"FullName":"Eynar Pari","TimeZone":0,"IsProUser":false,"DefaultProjectId":3352061,"AddItemMoreExpanded":false,"EditDueDateMoreExpanded":false,"ListSortType":0,"FirstDayOfWeek":0,"NewTaskDueDate":-1,"TimeZoneId":"Pacific Standard Time"}
""" 

@Scenario2 @Full
Scenario: Proyect cannot be create with small name

Given I have set a connection to todo.ly service
When I send a POST request to /projects.json with json
"""
{
    "ProjectObject":{"Content":"a"}
}
"""
Then I expect HTTP code 200
And I expect JSON equal to
"""
{
    "ErrorMessage": "Too Short Project Name",
    "ErrorCode": 305
}
""" 
@Scenario3 @Full
Scenario: Check if my request is authenticated

Given I have set a connection to todo.ly service
When I send a GET request to /authentication/isauthenticated.json
Then I expect HTTP code 200
And I expect JSON equal to
"""
true
""" 