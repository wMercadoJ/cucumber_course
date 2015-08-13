def convert(seconds)
	minutes = seconds / 60
	hours = minutes / 60
	return minutes, hours
end

puts "Insert seconds:"
seconds = gets.chomp.to_i
minutes,hours = convert seconds
puts "Minutes: #{minutes}, Hours: #{hours}"