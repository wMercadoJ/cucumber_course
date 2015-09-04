=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/12/2015
Description: - Arrays
			practica day 7		
=end
class Pactice
    def create_array
        alpha = Array.new
        puts "how many elemnts will have the array?"
        array_lenght = gets.chomp.to_i
        array_lenght.times do |position|
            puts "Please insert element[#{position}]"
            element = gets.chomp
            alpha.push element
        end
        return alpha
    end

    def print_array_result alpha
        puts "Your array is :"
        p alpha
    end

end

array_practice = Pactice.new
array = array_practice.create_array
array_practice.print_array_result array
