Given(/^a empty list like this:$/) do |list|
  @board = list.raw
  puts @board 
end

When(/^I add a(\D+) in the list$/) do |element|

	@board.push(element.to_s)
	puts @board 
end

When(/^I delete a (\D+) in the list$/) do |element|
	@board.select{ |item| item != element.to_s  }
	puts @board 
end

Then(/^the list should look like this:$/) do |expected_table|
  #expected_table.diff!(@board)
  puts @board 

end

