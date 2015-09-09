Feature: Daily activities with background
		Scenario 1. Use data table
		Question mark modified for singular and plural
		2. Multiple captures of data
		3. Noncapturing group
Background:
 Given I wake up in the morning
       And I wash my face
       And I wash my teeth
 Then I ready to go out

Scenario: This is scenario 01
Given I have milk
     And I have a bread
Then I ready to have breakfast


Scenario: This is scenario 02
Given I take the bus to go to JalaSoft
When today is tuesday
Then I arrive 09:40 am
|day      |hour |
|Monday   |08:30|
|Tuesday  |09:00|
|Wednesday|10:30|
|Thursday |08:45|
|Friday   |08:15|