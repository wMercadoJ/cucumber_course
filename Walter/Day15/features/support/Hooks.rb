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