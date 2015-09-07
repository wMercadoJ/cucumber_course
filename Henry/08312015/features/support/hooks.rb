Before('@withdraw_50, @withdraw_100') do |scenario|
	puts " Let’s Go scenario: #{scenario.title}"
end

After do |scenario|
   	if scenario.failed?
    	puts  "Faile#{scenario.exception.message}" 
   	else
   		puts " Bye Bye it Passed"
  	end
end
