=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/12/2015
Description: - Class,Variables and arrays
			practica day 7		
=end

class PracticeWithArray
	attr_reader :nro_items
	attr_accessor :array_test
	def nro_elems_in_array()
		puts "Introduce the number of items for your array: "
		@nro_items = gets.chomp().to_i
		@array_test = Array.new(@nro_items)

		@nro_items.times do
			puts "Introduce element: "
		 	elem = gets.chomp()
		 	@array_test.push(elem)
		end
		return @array_test
	end
	def print_array(array_test)
		puts array_test
	end
end

pwa = PracticeWithArray.new()
#puts pwa.nro_elems_in_array()
pwa.print_array(pwa.nro_elems_in_array())
