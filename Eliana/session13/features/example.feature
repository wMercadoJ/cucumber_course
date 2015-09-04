# Creating step definition 
Feature: Creating step definition
Scenario: 
Given I have $100 in my Account

Scenario: The text box accept only numbers
Given add person form has a text field that accept only numbers 
When I type a number \$([0-9]*)
Then an confirmation message should be displayed

Scenario: The text box accept only numbers
Given add person form has a text field that accept lower case characters 
When I type only characters in lower case /$([a-z]*)
Then an confirmation message should be displayed

Scenario: Accept any character except digits
When add person form has a text field that accept any character except digits 
When I type any character except digits /$([\D]*)
Then an confirmation message should be displayed

# After change Given keywork for When it is still working.
