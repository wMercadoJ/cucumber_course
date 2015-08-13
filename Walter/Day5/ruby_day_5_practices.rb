# Day5: Practice 1 

# module Greets
# 	FIRST_DAY = "Sunday"
# 	def first_greet(name)		
# 		puts "Hi #{name}"
# 	end
# 	def second_greet(name)	
# 		puts "Good night #{name}"
# 	end
# 	def third_greet(name)	
# 		puts "Good afternoon #{name}"
# 	end
# end

# module Byes 
# 	FIRST_DAY = "Sunday"
# 	def first_bye(name)	
# 		puts "Good bye #{name}"
# 	end
# 	def second_bye(name)	
# 		puts "See you later #{name}"
# 	end
# 	def third_bye(name)	
# 		puts "Take care #{name}"
# 	end
# end


require './ruby_day_5_module_greet'
require_relative 'ruby_day_5_module_bye'

class Greets_Byes
	include Greets
	include Byes
end

puts "Introduce your name:"
name = gets.chomp

puts "This script prints different ways to say bye and greets:"

greets_byes = Greets_Byes.new
greets_byes.first_greet name
greets_byes.second_greet name
greets_byes.third_greet name
greets_byes.first_bye name
greets_byes.second_bye name
greets_byes.third_bye name
