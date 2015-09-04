Before('@high') do |scenario|
  puts " Let’s Go scenario: #{scenario.title}"
end

After('@medium') do |scenario|
   if scenario.failed?
    puts  "Faile#{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end