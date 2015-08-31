Given(/^a board like this:$/) do |table|
  # table is a table.hashes.keys # => [:1, :2, :3]
  @board = table.raw
end

When(/^player "([^"]*)" plays in row (\d+), column (\d+)$/) do |arg1, row, col|
  #puts @board
  row, col = row.to_i, col.to_i
  @board[row][col] = arg1
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a table.hashes.keys # => [:1, :2, :3]
  expected_table.diff!(@board)
end

