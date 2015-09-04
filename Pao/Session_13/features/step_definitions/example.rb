=begin
Practice 1
Run your example.feature file, review the steps definition created by default.
Copy all the step definitions into a ruby file in steps folder.
Identify the two parts of the step definition.(define each one as a comment)
Now change the keyword for example instead of Given put When. Run again your feature file.
Is it still working?
Yes, it is still working

Practice 2 
Create 2 steps definition considering the argument received with two possible options.
Given(/^The alarm is (4|5) meters from my bed$/) do |arg1|

Create the step using both values and verify that both are recognized in the step definition.

And The alarm is 5 meters from my bed
And The alarm is 6 meters from my bed --> THIS SHOW AS UNDEFINED

(you can try to insert also any other value in order to see that other values are not matching)

=end

When(/^a Alarm Clock Set by (\d+) AM$/) do |arg1|
  # Write code here that turns the phrase above into concrete actions
end

Given(/^The alarm is (4|5) meters from my bed$/) do |arg1|
   # Write code here that turns the phrase above into concrete actions
end

When(/^the alarm start ringing$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^time is (\d+)$/) do |arg1|
  # Write code here that turns the phrase above into concrete actions
end

Then(/^I should open my eyes$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should walk (\d+) meters to reach the alarm$/) do |arg1|
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should stop the alam ring$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be ready to take the shower$/) do
   # Write code here that turns the phrase above into concrete actions
end

Given(/^I reach the office$/) do
   # Write code here that turns the phrase above into concrete actions
end

Given(/^took my coat off$/) do
   # Write code here that turns the phrase above into concrete actions
end

Given(/^seat in my desk$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^I open my note book$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^write my daily work for the day$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be ready to start working$/) do
   # Write code here that turns the phrase above into concrete actions
end

