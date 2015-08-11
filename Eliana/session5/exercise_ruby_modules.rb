=begin
module Greets
	def Greets.greets
		greetings = ["Hello", "Hi", "Good night", "Good morning", "Good afternoon"]
		greetings.each do |greeting|
          puts greeting
      end
    end
end

#Greets.greets

module Farewells
	def Farewells.farewells
		farewells = ["Good bye", "See you later", "Take care you", "See you tomorrow", "Bye"]
		farewells.each do |farewell|
          puts farewell
      end
    end
end

#Farewells.farewells

=end


require './greetings' #This line is included to import the modules of a file

class GreetingsManager
	include Greets 
	include Farewells 
end

greetingsManager = GreetingsManager.new

greetingsManager.greets
greetingsManager.farewells