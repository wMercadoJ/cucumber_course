=begin
1. Create a module	
=end

module Conversions

	def minutes_to_hours()
    puts "Please insert the amount of minutes"
    minutes = gets.chomp.to_i
		hours = minutes / 60
    puts "#{minutes} minutes represent #{hours} hours"
	end

	def hours_to_days()
    puts "Please insert the amount of hours"
    hours = gets.chomp.to_i
		days = hours / 24
    puts "#{hours} hours represent #{days} days"
	end

	def days_to_month()
    puts "Please insert the amount of days"
    days = gets.chomp.to_i
		month = days / 30
    puts "#{days} days represent #{month} month"
	end
end

=begin
2. Create a class	
=end

require 'singleton'

class Registration

  include Singleton
  include Conversions

  attr_accesor :name
  attr_accesor :id

  def initialize
    @username = nil
    @id = nil
    @hash = Hash.new
    @amount = nil
    @option_selected = nil
  end

	def get_information
    @amount.times do
      username_valid = false
      puts "Please insert the username"
      while(!username_valid)
        @username = gets.chomp
        if @username !~ /^[a-z0-9]{1,11}$/
          puts "Please insert a valid username"
        else
          username_valid = true
        end
      end
      puts "Please insert the ID"
      @id = gets.chomp.to_i

      @hash[@username] = @id

    end

    return @hash
	end

  def amount_users()
    valid_amount = false
    puts "Please insert the amount of users"
    while(!valid_amount)
      @amount = gets.chomp.to_i
      if @amount <=15 && @amount >=3
        valid_amount = true
      else
        puts "Please insert a valid amount of users"
      end
    end

    return @amount
  end

  def type_conversion()
    puts "Please specify the type of conversion wanted"
    puts "a: From minutes to hours"
    puts "b: From hours to days"
    puts "c: From days to month"

    valid_option = false
    while(!valid_option)
      @option_selected = gets.chomp
      if @option_selected =~ /^[a-c]$/
        valid_option = true
      else
        puts "Please insert a valid option"
      end
    end

    return @option_selected
  end

  def calculation(option)
    if option == "a"
      minutes_to_hours
    end
    if option == "b"
      hours_to_days
    end
    if option == "c"
      days_to_month
    end
  end

end

reg = Registration.instance
reg.amount_users()
hash = reg.get_information()
hash.each do |key|
  opt = reg.type_conversion
  reg.calculation(opt)
end

