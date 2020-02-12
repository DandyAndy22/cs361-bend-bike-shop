!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

luggage = Luggage.new(10, 50)

bike = Bike.new(1, :pink, 99.99, luggage)

rental = Rental.new(bike, luggage)

puts "Total Price: #{rental.total_price}, Total Weight: #{bike.weight}"

