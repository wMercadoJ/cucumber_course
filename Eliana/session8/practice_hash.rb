cars = {
	'altima' => 'nissan',
	'camry' => 'toyota',
	'rx7' => 'mazda'
}
puts cars['rx7'] #  =>   mazda

elements = Hash.new  # or {}
elements['H'] = 'Hydrogen' #associate the key 'H' to the value 'Hydrogen'
elements['He'] = 'Helium'
elements['Li'] = 'Lithium'
p elements['H']       # prints "Hydrogen"
p elements.length     # prints 3
p elements.values     # prints ["Lithium", "Helium", "Hydrogen"]
p elements.keys       # prints ["Li", "He", "H"]
p elements            # prints {"Li"=>"Lithium", "He"=>"Helium", "H"=>"Hydrogen"}

# Create a hash with []
toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
p toppings

# Select
salaries = {"bob" =>10.9,
			"larry"=>7.5,
			"jimmy"=>6.0,
			"jerry"=>6.5}
salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary > 7.0}
p mySalaryArray #prints  [["larry", 7.5], ["bob", 10.9]]

#symbols as hash keys
my_hash = {
  :a => "Artur",
  :l => "Linda",
  :r => "Ryan",
  :z => "Zach"
}
p my_hash

#Hash shortcut 
my_hash = {
  a:  "Artur",
  l:  "Linda",
  r:  "Ryan",
  z:  "Zach"
}
p my_hash

#store
hash = Hash.new 
hash.store "element","value"
p hash

#has_key?
h = {"a"=>"10", "2"=>"e"}
puts "has_key? in the array #{h}"
puts h.has_key?("2")
puts h.has_key?("5"
	
#has_value?
puts "has_value? in the array #{h}" 
puts h.has_value?("10")
puts h.has_value?("5")
