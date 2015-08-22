#Control Statements
a = 5
 if a == 4
   a = 7
 end
 puts a

a = 4
if a == 4; a = 7 end
puts a

#if expression
a = 5
 if a == 4
   a = 7
 end
 puts a

a = 4
if a == 4 then a = 7 end
puts a

# modifier 
a = 5
 puts a = 7 if a == 4

#unless expression
a = 5
 unless a == 4
   a = 7
 end
 print a

a = 5
 a = 7 unless a == 4
 print a

# if-elsif-else expression
price = 30000.00
if price < 10000
  puts " Buy it!! "
elsif price < 30000
   puts " Think about buy it! "
elsif price < 50000
   puts " Don’t Buy it! "
else
   puts " Don’t even think about it!! "
end

#short-if expression
a=5
puts result = a == 4? a = 7 : a=10
#or
puts result = if a == 4 then a = 7 else a=10 end

#case expression
a = 1
 case 
 when a < 5 then puts "#{a} is less than 5"    
 when a == 5 then puts "#{a} equals 5" #WARNING with = 
 when a > 5 then puts "#{a} is greater than 5" 
 end

#ranges
a =7
case a
 when 0..4 then puts "#{a} is less than 5"    
 when 5 then puts "#{a} equals 5" 
 when 6...10 then puts "#{a} is greater than 5" 
 else puts "unexpected value #{a} " 
end

#for expression
for i in 1..4 
 puts "hi #{i}"
end

# Ranges with variables

top = 6
for i in 1..top
 puts "hi #{i}"
end
