#$LOAD_PATH << '.'

#require 'customer'
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

customer = Customer.instance
customer.add_user_info(100,"Paola Munoz", 50)
customer.add_user_info(200,"Karime Salomon",100)
customer.add_user_info(300,"Franz Perez",200)


Given(/^I have a list of clients$/) do
   @hash_id_users = customer.id_users
   @hash_id_total = customer.id_prices
end

When(/^I search by client name: ([^"]*)$/) do |customer_name|
  @total_price = customer.find_total_by_user(customer_name)
  @user_name = customer.client_exist(customer_name)
end

When(/^I search by client ID: (\d+)$/) do |customer_id|
  @total_price = customer.find_total_by_id(customer_id)
end
Then(/^I should see the total priced: \$(\d+)$/) do |total_price|
  expect(@total_price.to_i).to eq(total_price.to_i)
end

Then(/^I should see in the list the client name: ([^"]*)$/) do |customer_name|
  expect(@user_name.to_s).to eq(customer_name.to_s)
end

