=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/05/2015
Description: - Modulo and Class
practica day 5
=end
#Ruby Module

module Week
	FIRST_DAY = "Sunday"
	def weeks_in_Month
		puts "you have four weeks in a month"
	end
	def weeks_in_year
		puts "you have 52 weeks in a year"
	end
end

=begin
#How to call a mudule

puts Week::FIRST_DAY
Week.weeks_in_Month
Week.weeks_in_year
=end

#how to integrate a module with class

class WeekExample
	include Week
	def new_def_in_class()
		puts "in class"
	end
end

w = WeekExample.new
w.new_def_in_class
w.weeks_in_year
w.weeks_in_Month