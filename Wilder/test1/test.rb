#1
module Time_Converter
	def Time_Converter.minToHours(mins)
		mins/60
	end
	def Time_Converter.hrToDays(hours)
		hours/24
	end
	def Time_Converter.daysToMonths(days)
		days/30
	end
end
puts "enter minutes to convert to hours: "
puts "hours: " + Time_Converter.minToHours(gets.chomp.to_f).round(2).to_s
puts "enter hours to convert to days: "
puts "days: " + Time_Converter.hrToDays(gets.chomp.to_f).round(2).to_s
puts "enter days to convert to months: "
puts "months: " + Time_Converter.daysToMonths(gets.chomp.to_f).round(2).to_s

#2
class Registry_Manager
	#i
	attr_reader :hash	
	def initialize
		@hash = {}
		@hash["id"] = nil
		@hash["username"] = nil
	end
	def setData(id, username)
		@hash["id"] = id
		@hash["username"] = username
	end
	#ii
	def setMultipleData
		puts "enter amount of users"		
		amount = gets.chomp.to_i
		if (amount < 16 && amount > 2)
			amount.times do | index |
			puts "enter username for id #{index+1}: "
			@hash[(index+1).to_s] = gets.chomp	
			end
			return "registry complete!"
		else
			return puts "enter a number beetwen 3 and 15"
		end
	end
	#iii
	def askConvertion
		puts "a. min to hrs"
		puts "b. hors to days"
		puts "days. min to months"
		#@hash.length.times do | index |
		#puts "select convertion method: "		
		#end
	end
end

reg = Registry_Manager.new
reg.setMultipleData