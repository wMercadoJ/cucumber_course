=begin description
Example 4 - This script is to practice : write some variable that
convert seconds in minutes, second in hours and second in day  
=end

#variables

Seconds=80000

# Operations
SecondsToMinutes=Seconds/60.00
SecondsToHours=Seconds/3600.00
SecondsToDays=Seconds/86400.00

# Results
puts "Seconds : #{Seconds} convert to Minutes : #{SecondsToMinutes}"
puts "Seconds : #{Seconds} convert to Hours : #{SecondsToHours}"
puts "Seconds : #{Seconds} convert to Days : #{SecondsToDays}"
