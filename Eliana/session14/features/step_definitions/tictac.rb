Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  @board = table.raw
end

When(/^player (\D+) plays in row (\d+), column (\d+)$/) do |player, row, col|
  puts @board
  #pending # Write code here that turns the phrase above into concrete actions
  row,col = row.to_i,col.to_i
  @board[row][col] = player
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  expected_table.diff!(@board)
end


