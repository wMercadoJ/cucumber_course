Feature: Calculator
Practice of Scenarios in Ruby with common operations of calculator

Scenario: Addition operation in calculator
	When First number that is an Integer
		And Second number that is an Integer too
	When I Add first and second number using the calculator
	Then Calculator returns the sum of these numbers


Scenario: Subtraction operation in calculator
	Given Fist number(10) that is an Integer
		And Second number(5) that is an Integer too		
	When I Subtract first minus second number using the calculator
	Then Calculator returns the Difference of these numbers

Scenario: Subtraction operation in calculator using recognized values 
	Given Fist number(20) that is an Integer
		And Second number(10) that is an Integer too		
	When I Subtract first minus second number using the calculator
	Then Calculator returns the Difference of these numbers

Scenario: Subtraction operation in calculator using another values
	Given Fist number(200) that is an Integer
		And Second number(100) that is an Integer too		
	When I Subtract first minus second number using the calculator
	Then Calculator returns the Difference of these numbers


Scenario: Multiplication operation in calculator
	Given Fist number(10) to be multiplied 
		And Second number(5) to be multiplied 	
	When I multiply first minus second number using the calculator
	Then Calculator returns the Difference of these numbers

Scenario: Multiplication operation in calculator
	Given Fist number(10) to be multiplied 
		And Second number(5) to be multiplied 	
	When I multiply first minus second number using the calculator
	Then Calculator returns the Difference of these numbers


Scenario: Select Operation in calculator
	Given The Operation: sum
	When I click in that option 
	Then Calculator execute the operation

Scenario: Select Operation in calculator
	Given The Operation 2: sum
	When I click in that option 
	Then Calculator execute the operation