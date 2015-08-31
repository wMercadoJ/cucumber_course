#1. In the .feature file created before:
#
#- Write 2 scenarios from your own projects
#
#2. Create a new daily.feature file
#include 2 scenarios describing your daily activities, e.g. cooking breakfast, go to work, etc,etc
#
#Define a the steps of each one using Given, Then, When and also sing And /But or *.
#Also add comment lines to add any extra information.

# This feature covers the account transaction and hardware-driver modules
Feature: Withdraw Cash
  In order to buy beer
  As an account holder
  I want to withdraw cash from the ATM
# Can't figure out how to integrate with magic wand interface

  Scenario: Withdraw too much from an account in credit
    Given I have $50 in my account
  # When I wave my magic wand
    And I withdraw $100
    Then I should receive $100



