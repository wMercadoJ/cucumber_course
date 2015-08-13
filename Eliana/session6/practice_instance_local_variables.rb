class Calculate
PI = 3.1416

#Calculate and print the area of a circle
def calculate_area (radius)
	radius*2*PI
end

#Calculate and print the perimeter of a circle
def calculate_perimeter (radius)
	radius*radius*PI
end

end

circle = Calculate.new
puts circle.calculate_area(10)
puts circle.calculate_perimeter(20)