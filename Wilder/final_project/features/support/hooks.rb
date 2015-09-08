Before('@api_test') do |scenario|
  puts "running scenario: #{scenario.name}.."
end

After do |scenario|
   if scenario.failed?
    puts  "failed: #{scenario.exception.message}" 
   else
   	 puts "passed"
  end
end