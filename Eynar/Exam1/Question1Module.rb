=begin
Question 1
=end
module Convert
	
	def Convert.minutes_to_hours(minutes_value)
		minutes=minutes_value.to_f/60.0		
	end

	def Convert.hours_to_days(hours_value)
		days=hours_value.to_f/24.0
	end

	def Convert.days_to_month(days_value)
		days_value=days_value/30.0
	end
end


p "minutes : 120 to hours : #{Convert.minutes_to_hours(120)}"
p "hours : 48 to days : #{Convert.hours_to_days(48)}"
p "days : 60 to month : #{Convert.days_to_month(60)}"