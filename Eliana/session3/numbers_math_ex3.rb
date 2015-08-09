=begin
Practice to work with variables and numbers
=end

print " Work with numbers to display: Average, Greater, less \n"

number1 = 2
number2 = 7
number3 = 10.5
average = number1 + number2 + number3 / 3

print " Average of numbers:  #{number1}, #{number2}, #{number3} is : #{average} \n"

puts  "The number greater is: "
if number2 > number1
   puts  number2
else 
   puts number1
end

numberLess = number3 < number2

puts numberLess ?  "#{number3} is less than #{number2}" : "#{number2} is less than #{number3}"

# Get current time and print in formt ddmmYYYY HH:MM
user = "anaeli"
currentTime = Time.now
currentFormat = currentTime.strftime "%d/%m/%Y %H:%M"

puts "The user #{user} login into the system on:  #{currentFormat}"

=begin
Practice to convert seconds, minutes, hours and days
=end

number = 2880
value = "days"

case value
when "seconds"
  puts "#{number} minutes in seconds is: #{number / 60}"
when "minutes"
  puts "#{number} seconds in minutes is: #{number * 60}"
when "hours"
  puts "#{number} hours in minutes is: #{number * 60}"
when "days"
  puts "#{number} minutes in days is: #{number / 1440}"
else
  puts "The value #{value} is invalid."
end


