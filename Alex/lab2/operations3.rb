=begin
This is a practique for the lab 2
Convert the seconds in mintes, hours and days
=end

puts "Type the seconds"
second = gets.chomp.to_i

minute = second / 60
hour = minute / 60
day = hour / 24
year = day / 365

puts "Second: #{second}"
puts "Minute: #{minute}"
puts "Hour: #{hour}"
puts "Day: #{day}"
puts "Year: #{year}"