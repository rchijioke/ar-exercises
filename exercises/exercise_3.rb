require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Load the third store (with id = 3) and assign it to @store3
@store3 = Store.find(3)

# Delete the third store using the destroy method
@store3.destroy

# Output the number of stores to verify the deletion
puts "Number of stores after deletion: #{Store.count}"
