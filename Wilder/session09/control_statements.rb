class User_Manager
    attr_reader :array
    def initialize
        @hash = {}
        @array = Array.new
    end

    def register_users(amount)
        amount.times do
			puts "enter id"
            id = gets.chomp
            puts "enter username"
            name = gets.chomp
			@hash.store(id, name)
		end
    end
    
    def print_users_list
        @hash.each do | id, name |
            puts id + ' : ' + name
        end
    end
    # uppercase names
    def update_usernames
        @hash.each do | id, name |
            @hash.update(@hash){| id, name | name.upcase}
            @array.push(name.upcase)
        end
    end
    def say_goodbye
        @hash.each do | id, name |
            puts "good bye " + name
        end
    end
end

mng = User_Manager.new
puts "enter amount of user to be registered"
mng.register_users(gets.chomp.to_i)
mng.print_users_list
mng.update_usernames
p mng.array
mng.say_goodbye