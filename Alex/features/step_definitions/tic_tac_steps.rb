Given(/^a board like this:$/) do |table|
  @board = table.raw# manage all the dates in an array
end

When(/^player (\D+) plays in row (\d+), column (\d+)$/) do |player, arg1, arg2|
	row, col = arg1.to_i, arg2.to_i
    @board[row][col] = player
    puts @board
end

Then(/^the board should look like this:$/) do |table|
  table.diff!(@board)
end