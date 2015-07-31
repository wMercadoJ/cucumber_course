=begin description
Example 3 - This script is to practice the variable declaration 
=end

#variables
BananasNumber="result #{25+30/6}"
ApplesNumber=" result #{100-25*3%4}"
PotatosNumber=3+1+1-5+4%2-1/4+6
IsTrue=3+2<5-7
ResultAdd1=3+2
ResultAdd2=5+7

value1=50
value2=200
valueString1="The End of "
valueString2="Script"
isfalse=false

puts "I will how count my fruits :"

puts "Bananas : #{BananasNumber}"
puts "Apples : #{ApplesNumber}"

puts "Now I will count the potatos"
puts PotatosNumber

puts "Is It true that  3 + 2 < 5 - 7"
puts IsTrue

puts "What is 3+2? It is #{ResultAdd1}"
puts "What is 5+7? It is #{ResultAdd2}"

puts "Addition #{value1} + #{value2} = #{value1+value2}"
puts "Addition with Strings : #{valueString1+valueString2}"

puts "Operator Logic : #{IsTrue and isfalse}"