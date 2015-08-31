Given(/^I wake up early in the morning$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I get up from my bed$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I make my bed$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I take a shower$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I change my clothes$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have my room messy$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I clean and sort all my bed$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I found some garbage that needs to be dumping trash$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I go to my Work$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have the following table with my tasks$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  @board = table.raw
end

When(/^I start with the (Task\d+) I change the Status to (In Progress)$/) do |task, status|
  # table is a Cucumber::Core::Ast::DataTable
  if (task == "Task1") 
      @board[1][1] = 'In Progress'
  elsif (task == "Task2")
      @board[2][1] = 'In Progress'
   end  
end

Then(/^the Table of my task should look like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.diff!(@board)
end

Given(/^(Task\d+) is completed I marked this task as (Done)$/) do |task, status|
  # table is a Cucumber::Core::Ast::DataTable
  if (task == "Task1") 
      @board[1][1] = 'Done'
  elsif (task == "Task2")
      @board[2][1] = 'Done'
  end  
end

