=begin description
Practice 1 -  import modules or library
=end

#load 'Practice1.rb'
require '../Class5/Practice1'

class PractModule 
	include Greets
    include SayBye

	def initialize()
	end
		
end

Practice=PractModule.new
Practice.good_afternoon
Practice.good_bye