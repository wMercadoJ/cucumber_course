
Before('@Tag2', '~@Tag1')  do |scenario|
  puts " Let’s Go scenario: #{scenario.title} Test"
end

After do |scenario|
   if scenario.failed?
    puts  "Failed #{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end
