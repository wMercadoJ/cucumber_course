Feature: This is the feature title
This is the description of the feature, which can span multiple lines.
You can even include empty lines, like this one:

In fact, everything until the next Gherkin keyword is included in the description.
The text immediately following on the same line as the Feature keyword is the
name of the feature, and the remaining lines are its description. 

# Practice Scenarios 

  Scenario: Send a REST request to PPSS, Schedule Baseline.
  Given I have logged in PPSS as user: "admin" and password: "admin123"
    When I send POST "/PPSS/MPC/workspaceType/1/workspace/1/schedule" with JSON
    """
    {
        "typeId":"Baseline",
        "notes":"",
        "dateTime":{"real":20150323170000},
        "runNow":false
    }
    """
    Then I expect HTTP code OK
      
  Scenario: Send a REST request to PPSS, Schedule Simulation.
  Given I have logged in PPSS as user: "admin" and password: "admin123"
    When I send POST "/PPSS/MPC/workspaceType/1/workspace/1/schedule" with JSON
    """
    {
        "typeId":"Simulation",
        "notes":"",
        "dateTime":{"real":20150323173000},
        "runNow":false
    }
    """ 
    Then I expect HTTP code OK

  Scenario: Verify hours worked
  Given I wake up at 6:00 am
    When I prepare the breakfast
    Then I arrive at work at 8:00 am

  Scenario: Verify return home
  Given I leave the office at 6:00 pm
    When I drive 40 km/hrs
    Then I arrive at home at 7:00 pm
