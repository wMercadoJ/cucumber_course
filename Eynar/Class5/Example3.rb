=begin description
Example 3 modules
=end

module Week
	FIRST_DAY="Sunday"
	def Week.weeks_in_month
		puts"you have four weeks in a month"
	end

	def Week.weeks_in_year
		puts"You have 52 weeks in a year"
	end
end

puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year