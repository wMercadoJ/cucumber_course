Feature: Practice1 Day14

Scenario: Lounge screens Airport 
	Given the flight EZY4567 is leaving today
		And the flight C038 is leaving today
		And the flight BA01618 is leaving today	
	Then No tickets will be sold 
		And All delayed passengers of this flight will be relocated
