Before ('@withdraw_50, @negative') do |scenario|
  puts " Let’s Go scenario: #{scenario.title}"
end

After do |scenario|
   if scenario.failed?
    puts  "Failed ---->#{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end
