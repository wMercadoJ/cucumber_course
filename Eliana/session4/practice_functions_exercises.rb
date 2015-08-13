=begin
# This method converts the year of a person in hours
def person_age(name, age)
age_months = age.to_i * 12
age_days = age_months * 365
age_hours = age_days * 24

	puts "Hi" + " #{name}".upcase
	puts "Your age #{age} in hours is: #{age_hours}"
end
person_age "Eliana", "7"
person_age("Eliana", 7)
=end

=begin
#Return values of a function
def multiply(a,b)
  product = a * b
  return product
end
puts multiply(2,3) 

def mult(a,b)
   product = a * b
end

puts mult(2,3)

def mult(a,b)
    a * b
end

puts mult 3,3


	
def celsius_to_fahrenheit(celsius)
	fahrenheit = (((9 * celsius)/5) + 32).to_i
	return fahrenheit
end


def fahrenheit_to_celsius(fahrenheit)
	celsius = ((5 * (fahrenheit - 32))/9).to_f
end

puts celsius_to_fahrenheit(7)
puts fahrenheit_to_celsius 70.7
=end

=begin
#Ruby Optional argument values

def count(a=1,b=2,c=a+b)
  puts "#{a},#{b},#{c}"
end
count         #=>  1,2,3         
count 9       #=>  9,2,11
count 9,8     #=>  9,8,17
count 9,5,1   #=>  9,5,1
=end

#Ruby multiple return

def multiple_return_sintaxis(arg1)
   calculation_1 = arg1 * 100
   calculation_2 = arg1 / 100
   return calculation_1 , calculation_2
end
value_added, value_divided = multiple_return_sintaxis(25)
puts "Value Added = #{value_added}, Value divided = #{value_divided}"
