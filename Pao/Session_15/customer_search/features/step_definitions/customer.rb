require 'singleton'

class Customer
	include Singleton
	
	attr_accessor :users_prices
	attr_accessor :id_prices

	def initialize ()
		@users_prices = Hash.new()
		@id_prices = Hash.new()
	end
	def add_user_info(id, name, total_price)
		@users_prices['ID'] = id.to_i
		@users_prices['Name'] = name.to_s
		@id_prices['ID'] = id.to_i
		@id_prices['Total'] = total_price.to_i
	end
end

# c = Customer.instance
# c.add_user_info(100,"Paola Munoz", 50)
# c.add_user_info(200,"Karime Salomon",100)
# c.add_user_info(300,"Franz Perez",200)
# p c.users_prices
# p c.id_prices