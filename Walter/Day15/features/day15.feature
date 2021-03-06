Feature: Withdraw Fixed Amount
The "Withdraw Cash" menu contains several fixed amounts to
speed up transactions for users.

@some
Scenario: Withdraw fixed amount of $50
Testtsa
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $50
   Then I should receive $50 cash
         And the balance of my account should be $450

@some @any
Scenario: Withdraw fixed amount of $100
    Given I have $500 in my account
    When I choose to withdraw the fixed amount of $100
    Then I should receive $100 cash
       And the balance of my account should be $400

@some
Scenario: Withdraw fixed amount of $200
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $200
   Then I should receive $200 cash
         And the balance of my account should be $300

@any @other
Scenario Outline: Withdraw fixed amount
   Given I have <Balance> in my account 
   When I choose to withdraw the fixed amount of <Withdrawal>
   Then I should receive <Received> cash
      And the balance of my account should be <Remaining>
   Examples:
	| Balance | Withdrawal | Received | Remaining |
	| $500     | $50            | $50        | $450         |
	| $500     | $100          | $100      | $400         |
	| $500     | $200          | $200      | $300         |
