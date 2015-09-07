Feature: Daily activities 
Practice of Scenarios in Ruby

Scenario: Starting my day in the morning
	Given I wake up early in the morning 
		And I am ready to start my day 
	When I get out of my bed
	Then I go to the bathroom 
		And I take a shower
	Then I prepare my clothes that I will use during the day
		And I take my breakfast 
	Then Once completed previous actions I am ready to go to the work 

Scenario: Finishing my day in the afternoon 
	* I leave the office in the afternoon
	* I drive to my home in my car 
	* I review the gas of my car 
		* If I need to charge more gas I do it 
	* I drive to my Home 
		* I arrive to my Home 
	* I turn on the TV 
		* I watch some series or movies 