require 'singleton'
class User_Manager
    include Singleton
    attr_accessor :last_user
    attr_reader :visitors
    attr_reader :hash
    def initialize
        @hash = {}
        @hash.store("guess", "welcome")
        @visitors = 0
    end
    
    def register_user(user, message)
        @hash.store(user, message)
        @visitors += 1
        @last_user = user
    end
end

mng = User_Manager.instance
p mng.hash
puts mng.visitors
mng.register_user("wil", "test")
puts mng.last_user
puts mng.visitors
p mng.object_id
mng2 = User_Manager.instance
p mng2.object_id