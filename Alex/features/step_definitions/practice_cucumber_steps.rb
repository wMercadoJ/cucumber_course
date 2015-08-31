Given(/^I have \$(\d+) in my account$/) do |total_amount|
  @total_amount = total_amount.to_i
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
  @withdraw = withdraw.to_i
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
  if cash.to_i == 0
  	puts "You don't have enough cash"
  else
  	puts "Your cash is #{cash}"
  end
end

Then(/^the balance of my account should be \$(\d+)$/) do |remain_amount|
  @remaining = @total_amount - @withdraw
  if @withdraw > @total_amount
  	expect(@remaining).to be < remain_amount.to_i
  else
  	expect(@remaining).to eql(remain_amount.to_i)
  end
end