def travel(name, price, destination='CBBA')
	puts "\nName is #{name}"	
	puts "Destination is #{destination}"
	change = 6.96
	(price.to_f / change).round 2
end

puts "Insert name:"
name = gets.chomp
puts "Insert price:"
price = gets.chomp.to_f
puts "Price in dollars #{travel name, price}"