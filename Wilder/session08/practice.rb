class User_Manager    
    attr_accessor :name
	attr_accessor :age
    
    def years_to_hours
        if(@age<35)
            return @age * 365 * 24
        else
            return "invalid entry: cant be calculated"
        end
	end
    
	def print_message
        puts (@age >= 0 && @age <= 5) ? "you are a baby" :
            (@age >= 6 && @age <= 12) ? "you are a child" :
            (@age >= 13 && @age <= 21) ? "you are a young people" :
            (@age >= 22 && @age <= 35) ? "you are adult" : "invalid entry: cant be calculated"
	end
end

user = User_Manager.new
puts "enter name: "
user.name = gets.chomp
puts "enter age: "
user.age = gets.chomp.to_i
puts user.name + " your age in hours " + user.years_to_hours.to_s
user.print_message