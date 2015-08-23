class Father

  @money = 10

  def self.money
    @money
  end

end

class Son1 < Father

  @money = 3

end

class Son2 < Father

  @money = 2

end

class Son3 < Father

  @money = 1

end


puts Father.money
puts Son1.money
puts Son2.money
puts Son3.money

puts Father.money - Son1.money - Son2.money - Son3.money