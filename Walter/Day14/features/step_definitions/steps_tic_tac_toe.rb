Given(/^a board like this:$/) do |table|
  @board = table.raw
end

When(/^player (x|y+) plays in row (\d+), column (\d+)$/) do |player, row, col|	
  	puts @board
  	row, col = row.to_i, col.to_i
  	if (player == "x")
    	@board[row][col] = 'x'
    elsif (player == "y")
    	@board[row][col] = 'o'
    end

  	#pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |table|
  table.diff!(@board)

end
