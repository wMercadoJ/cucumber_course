#Create a Hash
sublement = Hash.new
sublement['C'] = 'Carbon'
sublement['O'] = 'Oxigen'

elements = Hash.new
elements['H'] = 'Hidrogen'
elements['He'] = 'Helio'
elements['Li'] = 'Lithium'
elements['others'] = sublement

p elements['H']
p elements['others']
p elements['others']['C']
p elements.length
p elements.values
p elements.keys
p elements

#Another way to create a Hash
toppings = Hash['pancakes','syrup','pizza','pepper']
p toppings

#Queries to Hashes

salaries = { "bob" => 10.9, "larry" => 7.5, "jimmy" => 6.0, "jerry" => 6.9}
salaries.inspect
mySalaryArray = salaries.select{|name, salary| salary > 7.0}
p mySalaryArray

test = elements.select{|symbol, name| name == 'Helio'}
p test