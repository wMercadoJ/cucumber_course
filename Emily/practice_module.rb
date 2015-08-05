# Create a script - Ruby Module
# August 5, 2015
# see some examples below:

module Greets
	SAY_HELLO = "Greets"
	def greets_friend
		puts "Hi Friend"	
	end
	def Greets.greets_night
		puts "Good Night"	
	end
	def greets_afternoon
		puts "Good Afternoon"	
	end
end

module Bye
	SAY_BYE = "Byeeeeeeeeee"
	def Bye.good_bye
		puts "good Bye"	
	end
	def Bye.see_you
		puts "See you!!"	
	end
	def Bye.take_care
		puts "Take care"	
	end
end

class MyGreet 
   include Greets
   include Bye
   
   def my_day
       Greets.greets_night
       Bye.see_you
   end
end
my_greet = MyGreet.new
  
   my_greet.greets_friend
   my_greet.greets_afternoon
   my_greet.my_day
   #my_greet.good_bye
   #my_greet.see_you
   #my.take_care
