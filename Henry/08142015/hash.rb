toppings = Hash["[pancakes","syrup","pizza","pepper","cereal","sugar"]
p toppings

salaries = {"bob" => 7.5,
			"jimmy" => 6.0,
			"jerry" => 6.5,
			"jerry" => 8.5}

salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary > 7.0}
p mySalaryArray