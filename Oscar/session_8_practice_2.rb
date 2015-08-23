class Person
  attr_accessor :name
  attr_accessor :age

  def calc_years_hours(years)
    if(years < 35)
      hours = years * 365 * 24
    else
      puts "Age cannot be calculated"
    end
  end

  def stage_case(years)
    case years
      when 0..5
        puts "You are a baby"
      when 6..12
        puts "You are a child"
      when 13..21
        puts "You are a young people"
      when 22..35
        puts "You are an adult"
      else
        calc_years_hours(years)
    end
  end

  #def stage_short_if(years)
  #  result = (years >= 0 && years <= 5) ? "You are a baby" : calc_years_hours(years)
  #  result = (years >= 6 && years <= 12) ? "You are a child" : calc_years_hours(years)
  #  result = (years >= 13 && years <= 21) ? "You are a young people" : calc_years_hours(years)
  #  result = (years >= 22 && years <= 35) ? "You are an adult" : calc_years_hours(years)
  #
  #end

end

per = Person.new
puts per.calc_years_hours(15)
puts per.stage_case(22)
#puts per.stage_short_if(55)



