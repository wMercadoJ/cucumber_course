Before('@emily, @cris', '@emiy_cris') do
  # This will only run before scenarios tagged
  # with (@any OR @some) AND @other 
  puts " Let’s Go scenario: #{scenario.title}"
end

After do |scenario|
   if scenario.failed?
    puts  "Failed#{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end
