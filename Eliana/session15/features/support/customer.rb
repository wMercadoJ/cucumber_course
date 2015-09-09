require 'singleton'

class Customer
  include Singleton
  
  attr_accessor :id_users
  attr_accessor :id_prices

  def initialize ()
    @id_users = Hash.new()
    @id_prices = Hash.new()
  end
  def add_user_info(id, name, total_price)
    @id_users[id] = name.to_s
    @id_prices[id] = total_price.to_i
  end
  #find only the first occurence
  def find_total_by_user(name)
    user = @id_users.select{|key, value| value==name.to_s}
    id = user.keys()[0]
    total_by_user= @id_prices[id]
  end
  def find_total_by_id(id)
    total_by_id= @id_prices[id.to_i]
  end
  def client_exist(name)
    if id_users.has_value?(name.to_s)
      return name
    else
      return nil
    end
  end
end
