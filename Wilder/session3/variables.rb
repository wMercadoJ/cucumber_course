=begin 
session3: variables and math operators
created by @wildergonzo
no Math module used for operations
=end

#practice1,3: test operators
#Velocity problem
#example doing operation inside puts instruction
puts "A man walks 7 km in 2 hours and 2 km in 1 hour in the same direction."
puts "What is the man's average velocity for the whole journey? "
# v = d/t
puts "Velocity = #{(7+2)/(2+1)} km/h"

#Basic Geometry
#examples using variables inside puts instruction
puts "Find the area and perimeter of a rectangle of 7x3 (length x width)"
length = 7
width = 3
puts "Perimeter = #{(2*l)+(2*w)}"
puts "Area = #{length} x #{width} = #{length * width}"

#Newton's 2nd law
puts "What force will produce an acceleration of 7 m/s2, in a body of mass 21 kg?"
acceleration = 7
mass = 21
puts "F = #{acceleration * mass} N"

#practice2: generate error
=begin
puts "test adding 5 plus a not defined value = #{5 + notDefined}"
#result below
undefined local variable or method `notDefined' for main:Object (NameError)
=end

#practice4
seconds = 214587
minutes = seconds / 60
hours = seconds / (60 * 60)
days = seconds / (24 * 60 * 60)

puts "Convert #{seconds} seconds to minutes, hours and days"
puts "Minutes: #{minutes}"
puts "Hours: #{hours}"
puts "Days: #{days}"