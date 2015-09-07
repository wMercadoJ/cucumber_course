Before ('@outline') do |scenario|
  puts "I am running outline scenario"
end

Before ('@normal') do |scenario|
  puts "I am running normal scenario"
end

Before ('@normal,@outline') do |scenario|
  puts "CUSTOMER SEARCH TEST"
end

Before ('~@normal,@outline') do |scenario|
  puts "SEARCHING..."
end

After ('@outline') do |scenario|
  puts "I finished running outline scenario"
end

After ('@normal') do |scenario|
  puts "I finished running normal scenario"
end

