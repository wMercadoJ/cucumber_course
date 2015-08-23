=begin
1. Ask from prompt the value of the seconds
2. Perform the calculation of minutes and hours into one function, return both values
3. Print the values of the variables.
=end

def minutes_hours(seconds)
  minutes = seconds / 60;
  hours = minutes / 60;
  return minutes, hours
end

puts "Please insert the seconds to be converted to minutes and hours"
seconds = gets.chomp.to_i
min, hour = minutes_hours(seconds)
puts "The minutes for #{seconds} seconds are #{min}"
puts "The hours for #{seconds} seconds are #{hour}"
