require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Create employees for @store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
# Create more employees for @store1 if needed

# Create employees for @store2 (Richmond)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
# Create more employees for @store2 if needed

# Output the number of employees in each store
puts "Number of employees at Burnaby: #{@store1.employees.count}"
puts "Number of employees at Richmond: #{@store2.employees.count}"

