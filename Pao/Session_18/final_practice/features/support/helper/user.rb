# require 'singleton'
=begin
def user_access
   user_access ||=User.new

end
=end


#login_to_system

require 'singleton'
class User
   include Singleton
  
  attr_accessor :users
  
  def initialize ()
    @users = Hash.new()
  end
  def define_login_pass (login, password)
    @users[login] = password
  end
  def get_users()
    @users
  end
  def login_to_system(login, password)
    if (@users.has_key?(login))
      if(@users[login] == password)
        message = "Welcome, have a nice day"
      else
        message = "Sorry Try Again"
      end
    else
      message = "Sorry Try Again"
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
