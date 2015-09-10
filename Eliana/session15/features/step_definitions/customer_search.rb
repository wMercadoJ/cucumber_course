class Clients
  include Singleton
  
  attr_accessor :users_info
  attr_accessor :prices_info

  def initialize ()
    @users_info = Hash.new()
    @prices_info = Hash.new()
  end

  # Add valuen into the array according the id
  def add_user_info(id, name, total_price)
    @users_info[id] = name.to_s
    @prices_info[id] = total_price.to_i
  end

  #find only the first occurence
  def find_total_by_user(name)
    user = @users_info.select{|key, value| value==name.to_s}
    id = user.keys()[0]
    total_by_user= @prices_info[id]
  end
  def find_total_by_id(id)
    total_by_id= @prices_info[id.to_i]
  end
  def client_exist(name)
    puts @users_info.has_value?(name.to_s) ?
      "#{name}" :
      "Not exist"
  end
end

clients = Clients.instance
clients.add_user_info(100,"Client 1", 50)
clients.add_user_info(200,"Client 2",100)
clients.add_user_info(300,"Client 3",200)

Given(/^I have a list of clients$/) do
   @hash_id_users = clients.users_info
   @hash_id_total = clients.prices_info
end

When(/^I search by client name: (.*)$/) do |client_name|
  @total_price = clients.find_total_by_user(client_name)
  @user_name = clients.client_exist(client_name)
end

Then(/^I should see the total priced: \$(\d+)$/) do |total_price|
  expect(@total_price.to_i).to eq(total_price.to_i)
end

When(/^I search by client ID: (\d+)$/) do |client_id|
   @total_price = clients.find_total_by_id(client_id)
end

Then(/^I should see the client name: (.*)$/) do |client_name|
  expect(@user_name.to_s).to eq(client_name.to_s)
end