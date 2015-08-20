class User_Manager
    def username?(user)
        res = user =~ /[a-z0-9\_]/ ? "ok" : "invalid"
    end
    
    def password?(password)
        res = password =~ /[a-z0-9A-Z]{8,16}/ ? "ok" : "invalid"
    end
        
    def email?(email)
        res = email =~ /^[a-zA-Z0-9]+@{1}+[a-zA-Z0-9]{3,10}+.[a-zA-Z]?{3}+.[a-zA-Z]{2,3}$/ ? "ok" : "invalid"
    end
end

mng = User_Manager.new
puts mng.username? "#Patricio"
puts mng.password? "test"
puts mng.email? "wil.com"

puts mng.username? "wil_"
puts mng.password? "Control123"
puts mng.email? "wil@ruby.com"