Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  @board = table.raw
end

When(/^player (\D+) plays in row (\d+), column (\d+)$/) do |player,row, col|
	row, col = row.to_i, col.to_i
    @board[row][col] = player  
end

Then(/^the board should look like this:$/) do |table|
	table.diff!(@board)
end