module TimeConversions
	def fromMinutesToHours(minutes)
		minutes / 60
	end

	def fromHoursToDays(hours)
		hours / 24
	end

	def fromDaysToMonth(days)
		days / 30
	end
end

puts fromMinutesToHours 180
puts fromHoursToDays 48
puts fromDaysToMonth 60