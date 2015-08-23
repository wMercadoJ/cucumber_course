=begin 
#Normal class
class Base  
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	 def some
         @value
 	end
 end  


 b1 = Base.new  
 p b1.any # Output => 10  
 b2 = Base.new  
 p b2.some # Output => 0

# Error
require 'singleton'  
 class Base  
  include Singleton  
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	 def some
         @value
 	end
 end 

 b1 = Base.new #private method 'new' called for Base:Class (NoMethodError)

#Form n°1 to work with with singleton
require 'singleton'  
 class Base  
  include Singleton  
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	 def some
         @value
 	end
 end  

 b1 = Base.instance  
 p b1.any # Output => 10  
 b2 = Base.instance  
 p b2.some # Output => 10 
=end

#Form n°2 to work with with singleton the most recomendable
 class Base  
 
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	 def some
         @value
 	end
 end  

def singletn_example
	@singletn_example ||= Base.new
end

 p singletn_example.any # Output => 10  
 p singletn_example.object_id # Output => 20402200  
 p singletn_example.some # Output => 10 
 p singletn_example.object_id # Output => 20402200  
 p Base.new.object_id # Output => 20402040  
 p Base.new.some # Output => 0


