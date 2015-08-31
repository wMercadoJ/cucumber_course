=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/05/2015
Description: - how to use Modules
			 - how to use use the file as required
			 - use with a class in another file
			practica day 5
=end


module Greetings
	def greeting_in_morning
		puts "Good Morning"
	end
	def greeting_in_afternoon
		puts "Good Afternoon"
	end
	def greeting_in_evening
		puts "Good evening"
	end
	def greeting_in_night
		puts "Good Night"
	end
	def greeting_to_friend (name)
		puts "Hi my Friend #{name}"
	end
end


module GoodBye
	def goodBye_to_friend (name)
		puts "GoodBye #{name}"
	end
	def see_you_later
		puts "See you later bye"
	end
	def take_care
		puts "Take care bye!"
	end
end
