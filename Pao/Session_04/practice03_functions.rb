=begin
Author: Paola Munoz
Subject: Ruby Basics
Date: 08/03/2015
Description: - How to use Gets
			 - Chomp vs strip
			 - to_i, to_s, to_f
practica day 4
=end

def print_passanger_info(name, ticket_cost, destination = 'CBBA')
	
	puts "Passanger Name: #{name}"
	puts "Destination: #{destination}"
	
	ticket_cost_Sus = convert_from_bs_to_dollar(ticket_cost)
	puts "Ticket Cost (Bs): #{ticket_cost_Sus}"
	puts "============================================"
end

def convert_from_bs_to_dollar(mount)
	mount_in_dollar = (mount.to_f / 6.97).round(2)
end

print "Introduce Passanger Name: "
passanger_name = gets.chomp().to_s

print "Introduce the ticket cost (Bs): "
passanger_ticket_cost = gets.chomp().to_f

print_passanger_info(passanger_name, passanger_ticket_cost)
print_passanger_info(passanger_name, passanger_ticket_cost, "STA CRUZ")


	