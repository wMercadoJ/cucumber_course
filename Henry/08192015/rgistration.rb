require './convertions'
class HashPractice
	attr_reader:userInfo
	
	def getUserInfo
		allConditions = false
		while allConditions == false do
			puts "Insert username"
			@username = gets.chomp
			if @username =~ /^[a-z0-9]{11}$/
				allConditions = true				
			end
		end
		puts "Insert ID"
		@id = gets.chomp
		@userInfo = {"username" => @username,
			"id" => @id}
	end

	def amountUsers
		puts "Insert amount of users"
		@id = gets.chomp
	end
end

hp = HashPractice.new
hp.getUserInfo()