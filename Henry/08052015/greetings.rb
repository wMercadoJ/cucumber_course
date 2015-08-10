require './module_greets'
require_relative 'module_Farewell'
class Greetings
	include Greets
	include Farewell

	def do_greetings
		puts "Starting"
		Greets.say_hi
		Farewell.say_bye
	end
end

g = Greetings.new
g.do_greetings
g.say_hola