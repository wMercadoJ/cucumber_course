class People

  def initialize(quantity)
    @quantity = quantity
    @hash = Hash.new
  end

  def get_information()
    @quantity.times do |key, value|
      puts "Please register a name"
      name = gets.chomp
      puts "Please register a ID"
      id = gets.chomp.to_i
      @hash.store(name, id)
    end

    return @hash
  end

  def do_tasks_1(hash)

    puts hash.inspect

    arr = Array.new
    # for each one of the Names, change them to upper case
    hash.each_with_index do |(key, value), index|
      up_key = key.upcase
      puts "#{index} - #{up_key}"
      arr.push(up_key)
    end

    return arr
  end


  def say_good_bye(array)
    array.each do |item|
      puts "Good bye #{item}"
    end
  end

end

people = People.new(2)
hash = people.get_information()
arr = people.do_tasks_1(hash)
people.say_good_bye(arr)