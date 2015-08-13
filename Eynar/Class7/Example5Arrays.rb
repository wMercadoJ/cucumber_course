=begin
this file is to test the array object
=end

my_array=[1,2,3,4,5,"test"]

puts my_array
p my_array

# remove the last value
puts my_array.pop
p my_array

#add new item in the end
my_array.push (666)
p my_array

#remove the first element
puts my_array.shift
p my_array

#add element in the begin
my_array.unshift(999)
p my_array