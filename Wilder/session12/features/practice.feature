Feature: blogging

Scenario: Wilder posts to his own blog
  Given I am logged in as Wilder
  When I try to post to "ruby fundamentals"
  Then I should see "Your article was published."

Scenario: Wilder fails to post to somebody else's blog
  Given I am logged in as Wilder
  When I try to post to "msdn"
  Then I should see "Hey! That's not your blog!"