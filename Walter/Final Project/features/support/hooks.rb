Before('@Projects,@Tasks','@Regression','@Sanity') do
  puts "I am running an outline scenario"
end

After('@Projects,@Tasks','@Regression','@Sanity') do
   puts "I finished running the outline scenario"
end

Before('@Projects','@Sanity','~@Regression') do
  puts "I am running a normal scenario"
end

After('@Projects','@Sanity','~@Regression') do
   puts "I finished running a normal scenario"
end
