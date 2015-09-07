# names = []
# Before do |scenario|
#   expect(scenario).to_not respond_to(:scenario_outline)
#   names << scenario.feature.name.split("\n").first
#   names << scenario.name.split("\n").first
#   if(names.size == 2)
#     puts "NAMES:\n" + names.join("\n") + "\n"
#   end
# end

Before ('@board, @Organizations') do |scenario|
	name = scenario.name
  	puts "I am running outline scenario: #{name}"
end

After ('@board, @Organizations') do |scenario|
	name = scenario.name
  	puts "I finished running outline scenario: #{name}"
end

