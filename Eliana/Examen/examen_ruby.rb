module Time_conversions

def convert_minutes_hours(minutes)
    hours = minutes / 60 
    puts hours <= 1 ?
    "#{minutes} Minutes represent #{hours} hour" :
    "#{minutes} Minutes represent #{hours} hours"
end

def convert_hours_day(hours)
	days = hours / 24
	puts days <= 1 ?
	 "#{hours} Hrs represent #{days} day" :
	 "#{hours} Hrs represent #{days} days"
end

def convert_days_month(days)
	months = days / 30
	puts months <= 1 ?
	"#{days} Days represent #{months} month" :
	"#{days} Days represent #{months} months"
end 

end


