elements = Hash.new
elements['H'] = 'Hydrogen'
elements['He'] = 'Helium'
elements['Li'] = 'Lithium'

p elements['H']
p elements.length
p elements.values
p elements.keys
p elements

p Hash["1", 1, "2", 2]

salaries = {"bob" => 10.9, 
			"larry" => 7.5,
			"jimmy" => 6.0,
			"jerry" => 6.5}
salaries.inspect
mySalaryArray = salaries.select{|name, salary| salary > 7.0}
p mySalaryArray["name"]
p salaries["larry"]