# require 'singleton'
def user_access
   user_access ||=User.new

end

class User
	# include Singleton
	
	attr_accessor :login
	attr_accessor :password

	def initialize ()
		@login = ""
		@password = ""
	end
	def define_login_pass (login, password)
		@login = login
		@password = password
	end
	def login_to_system(login, password)
		if login == @login && password == password
			message = "Welcome, Have a nice day"
		else
			message = "Sorry try again"
		end
		return message
	end
end

$list_item = ["apple", "banana" , "orange"]

def item_in_list(item_name)
	$list_item.each do |item|
		if item_name == item
			return true
		else
			return false
		end
	end
end

def seach_item(item_name)
	if (item_in_list(item_name))
		return "Found"
	else
		return "not found"
	end
end
