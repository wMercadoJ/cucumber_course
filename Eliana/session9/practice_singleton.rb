 class Visitor  
    attr_accessor :user
 	def initialize
         @user = "Guest"
         @message = "Wellcome to the city"
         @visitors = 0
         @hash_visitors = Hash.new
 	end
 	
=begin  to add a single user with a message
 	def manager_visitors
         p "Insert a user"
         @user = gets.chomp
         p "Insert a wellcome message"
         @message = gets.chomp
         @visitors = @visitors + 1
         @hash_visitors.store @user, @message
         return @hash_visitors
 	end
=end

    def add_user
    	p "Insert a user"
        @user = gets.chomp
    end
    
    def add_wellcome_message
    	p "Insert a wellcome message"
        @message = gets.chomp
    end

    def increment_visitors_amount
    	@visitors = @visitors + 1
    end

 	def print_hash  hash_visitors
 		p "user: #{@user}, message: #{@message}, num visitor: #{@visitors}"
 	end

 	def save_user_message
 		@hash_visitors.store @user, @message
         return @hash_visitors
    end
 end  


def singletn_example
	@singletn_example ||= Visitor.new
end

singletn_example.add_user
singletn_example.add_wellcome_message
singletn_example.increment_visitors_amount
singletn_example.add_user
singletn_example.add_wellcome_message
singletn_example.increment_visitors_amount
singletn_example.print_hash hash
p "Last user: #{singletn_example.user}"