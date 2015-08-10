# Create a script - Ruby Class
# August 10, 2015
# see some examples below:

class Circle 
   PI = 3.1416
    def circle_area(radius)
       radious = radius.to_f
	   res = radious * 2 * PI
	   puts "#{res}"	
    end
    def circle_perimeter(radious)
    	radius = radious.to_f
	   res = radius * radius * PI
	   puts "#{res}"	
    end
end
my_circle = Circle.new
  
   my_circle.circle_area(21)
   my_circle.circle_perimeter(23.5)

