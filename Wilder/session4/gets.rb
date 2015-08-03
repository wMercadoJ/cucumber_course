puts  "whats your name"
name = gets.chomp
puts "hi #{name}! how are you?"


puts "some test".chomp('test')
puts "some test\r\n".chomp('test')
puts "\tsome test\r\n".strip


print "give me a number: "
number = gets.chomp.to_i
bigger = number *100
puts "a bigger name is #{bigger}"

print "give me a number: "
number = gets.chomp.to_f
puts "a bigger name is #{number}"