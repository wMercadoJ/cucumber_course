module Time_conversions

def Time_conversions.convert_minutes_hours(minutes)
    hours = minutes / 60 
end

def Time_conversions.convert_hours_day(hours)
	days = hours / 24
end

def Time_conversions.convert_days_month(days)
	months = days / 31
end 
end

puts "Insert the time to convert"
time = gets.chomp.to_i
minutes_hours = Time_conversions.convert_minutes_hours time 
hours_days = Time_conversions.convert_hours_day time 
days_month = Time_conversions.convert_days_month time 
puts "#{time} minutes in hours is #{minutes_hours}"
puts "#{time} hours in days is #{hours_days}"
puts "#{time} days in months is #{days_month}"

