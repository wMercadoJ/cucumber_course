module Greets
	def greets
		greetings = ["Hello", "Hi", "Good night", "Good morning", "Good afternoon"]
		greetings.each do |greeting|
          puts greeting
      end
    end
end

#Greets.greets

module Farewells
	def farewells
		farewells = ["Good bye", "See you later", "Take care you", "See you tomorrow", "Bye"]
		farewells.each do |farewell|
          puts farewell
      end
    end
end