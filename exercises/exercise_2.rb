require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) and assign it to @store1
@store1 = Store.find(1)

# Load the second store and assign it to @store2
@store2 = Store.find(2)

# Update the name of the first store
@store1.name = "Roy's Store"
@store1.save

puts "Updated store name: #{@store1.name}"
