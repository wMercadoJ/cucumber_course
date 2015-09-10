Given(/^I wake up in the morning$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I wash my face$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I wash my teeth$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I ready to go out$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have milk$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have a bread$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I ready to have breakfast$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I take the bus to go to JalaSoft$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^today is (.*)$/) do |week_day|
    puts week_day.diff!(@time_arrive) ?
    "you arrive late today" :
    "you arrive on time" 

end

Then(/^I arrive (\d+):(\d+) (am|pm)$/) do |hour, min, period|
  puts @time_arrive = "#{hour} + #{min} + #{period}"
end
