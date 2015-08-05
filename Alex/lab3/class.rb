def person_age(name, age)
   puts "The name is #{name.upcase} and age is #{age*24}(hours)"
end

person_age("Alex",20)
person_age "Alex",20

def celsius_to_fahrenheit(celsius_value)
   ((9 * celsius_value.to_f) / 5) + 32
end

def fahrenheit_to_celsius(fahrenheit_value)
   (5 * (fahrenheit_value.to_f - 32)) / 9
end

puts celsius_to_fahrenheit 90
puts fahrenheit_to_celsius 140