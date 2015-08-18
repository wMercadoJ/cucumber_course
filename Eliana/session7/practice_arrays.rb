=begin
nums = [1,3.0, "something", "something_else"]
puts nums[2] # =>something

puts nums[-1] # =>something_else

puts [1,3.0, "something", "something_else"].last # =>something_else
puts [1,3.0, "something", "something_else"].first # => 1

mystuff = ["samsung","nokia", "iphone"]
puts "The size of string is:  #{mystuff.length}"#=>3

# %w used when are single words

mystuff = %w{samsung nokia iphone}
puts mystuff

my_array = [1,2,5,7,11]
#puts my_array
puts my_array.inspect
p my_array # shorcut for puts my_array.inspect


#intersection operator &
puts [1,2,3] & [3,4,5] # 3

# addition operator +
print [1,2,3] + [4,5,6]  # 1,2,3,4,5,6

puts "\n"

#sustration operator -
print  [1,2,3] - [3,4,5] # 1,2

puts "\n"

# pop returns the las element and removes it form the array
alpha = %w[a b c d e f g h]
puts "pop element = " + alpha.pop
p alpha 

# push
beta = %w[a b c d e f g h]
beta.push("x","y")
puts "push element = " + beta.inspect

# shift inverso to pop
shiftArray = %w[a b c d e f g h]
puts "shift element = " + shiftArray.shift
p shiftArray #

#unshift 
unshiftArray = ["a", "b", "c"]
unshiftArray.unshift("x","y")
p unshiftArray 

alpha = Array.new  
alpha.push("x","y","z")
puts alpha.inspect      # ["x", "y", "z"]
=end

class Pactice

def create_array
alpha = Array.new
puts "how many elemnts will have the array?"
array_lenght = gets.chomp.to_i
array_lenght.times do |position|
	puts "Please insert element[#{position}]"
	element = gets.chomp
	alpha.push element
end
return alpha
end

def print_array_result alpha
puts "Your array is :"
p alpha
end

end

array_practice = Pactice.new
array = array_practice.create_array
array_practice.print_array_result array
