Feature: Record every work you do during the day

Scenario: WakeUp from Bed by the alarm ring
Given a Alarm Clock Set by 06 AM
	And The alarm is 5 meters from your bed
When the alarm start ringing 
	And time is 06
Then I should open my eyes 
	And I should walk 5 meters to reach the alarm
	And I should stop the alam ring
	And I should be ready to take the shower

Scenario: Ready to start working
Given I reach the office
	And took my coat off
	And seat in my desk
When I open my note book
	And write my daily work for the day
Then I should be ready to start working
