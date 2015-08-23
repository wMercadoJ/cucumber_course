class Person

  attr_reader :name
  attr_writer :name

end

pers = Person.new
pers.name = "Luis"
puts "Hi #{pers.name}"
puts "#{pers.name} Have a nice day"

