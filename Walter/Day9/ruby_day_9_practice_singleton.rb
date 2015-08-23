class SingletonPractice
	attr_accessor :hash_user_message
	attr_accessor :last_user
 	
 	def initialize
 		@users = []
 		@messages = []

 		user = "Guest"
		message = "Welcome to the city"
		
		@users.push(user)
		@messages.push(message)		

		@visitors = 0
 	end

 	def add_user new_user
 		@users.push(new_user)         
 	end
 	def add_message new_message
        @messages.push(new_message)
 	end
 	def increment_visitors visitor
 		@visitors += visitor
 	end

 	def save_user_and_message_in_hash
 		@hash_user_message = Hash.new 		
 		if @users.length == @messages.length 		
 			@users.length.times do | position | 				
				user = 	@users[position]					
				message = @messages[position]						
				@hash_user_message.store(user, message)	
			end		
 		end 		
 	end

 	def get_last_user
 		array_keys = @hash_user_message.keys
 		@last_user = array_keys.last
 	end
end  

def singleton_practice
	@singleton_practice ||= SingletonPractice.new
end

puts "Introduce name of the user:"
user = gets.chomp
singleton_practice.add_user user

puts "Introduce a message:"
message = gets.chomp
singleton_practice.add_message message

puts "Introduce the number of visitors to add:"
visitor = gets.chomp.to_i
singleton_practice.increment_visitors visitor
singleton_practice.save_user_and_message_in_hash
singleton_practice.get_last_user
p singleton_practice.last_user


test_singleton = SingletonPractice.new


p singleton_practice.object_id 
p test_singleton.object_id
p singleton_practice.object_id 

# When we call to the method that instance the singleton(singleton_practice) 
# it always perform a reference to one object created the first time.

# If we create a new instance of SingletonPractice for each instance that 
# we are goint to create we are goint to have a different object and 
# we initialize the values all the times
