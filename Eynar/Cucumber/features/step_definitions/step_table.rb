Given(/^a board like this:$/) do |table|
  @board = table.raw
  #puts @board 
end

When(/^player (\D+) plays in row (\d+), column (\d+)$/) do |player,row, col|
	row, col = row.to_i, col.to_i
    @board[row][col] = player

 # pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  expected_table.diff!(@board)

  #pending # Write code here that turns the phrase above into concrete actions
end
