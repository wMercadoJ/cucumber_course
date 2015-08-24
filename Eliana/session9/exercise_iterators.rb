#Iterator each
[1,2,3,4].each {|n| puts n*2}

#each in hash
toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
toppings.each{|key, value| puts "#{key} points to #{value}"}

#each with index
['a','b','c'].each_with_index {|a,index| puts a}

hash = [1,3,7,13]
hash.each_with_index do |(key, value), index|
	puts key
end

#map and collection

p [1,2,3,4].map {|n| n*2} #  [2, 4, 6, 8]

#while
$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num
