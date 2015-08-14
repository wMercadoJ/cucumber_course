elements =Hash.new

elements['h']="Hidrogen"
elements['he']="Helium"
elements['li']="Lithium"

p elements['h']
p elements['he']
p elements['li']

p elements.keys
p elements

salary =Hash.new

salary['Name1']=3
salary['Name2']=7
salary['Name3']=9
salary['Name4']=9

MySalaryArray = salary.select { |name,salary| salary > 7.0  }

p MySalaryArray