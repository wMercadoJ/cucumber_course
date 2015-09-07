Before('@some') do |scenario|
  puts " Let’s Go scenario: #{scenario.name}"
end

After('@some') do |scenario|
   if scenario.failed?
    puts  "Faile#{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end

Before('@outline') do
  puts "I am running an outline scenario"
end

After('@outline') do
   puts "I finished running the outline scenario"
end

Before('@normal') do
  puts "I am running a normal scenario"
end

After('@normal') do
   puts "I finished running a normal scenario"
end


Before('@outline, @normal') do 
  puts "CUSTOMER SEARCH TEST"
end

After('@outline') do 
  puts "SEARCHING . . . "
end