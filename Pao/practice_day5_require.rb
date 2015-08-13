=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/05/2015
Description: - how to use Modules
			 - how to use use the file as required
			 - use with a class in another file
			 - Create a class and use the modules in the a file
			practica day 5
=end

$LOAD_PATH << '.'

require "practice_day5_modulo_part1"

class Greeting_and_GoodBye
	include Greetings
	include GoodBye
end

if __FILE__ == $0
	gg = Greeting_and_GoodBye.new()
	gg.greeting_to_friend "Maria"
	gg.greeting_in_night
	gg.greeting_in_evening
	gg.take_care
end