Before('@OutLine1')  do |scenario|
  puts " I am running outLine Scenario"
end

Before('@Normal')  do |scenario|
  puts " I am running a normal Scenario"
end

After('@Normal') do |scenario|
   puts " I finished running outLine Scenario"
end
After('@OutLine1')  do |scenario|
   puts " I finished running a normal Scenario"
end

Before('@OutLine1 ',' @Normal')  do |scenario|
  puts "CUSTOMER SEARCH TEST"
end

Before('@OutLine1', '~@Normal')  do |scenario|
  puts "SEARCHING"
end
