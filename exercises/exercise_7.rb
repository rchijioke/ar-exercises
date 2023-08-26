require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"



# Ask the user for a store name
print "Enter a store name: "
store_name = gets.chomp

# Attempt to create a store with incomplete fields
new_store = Store.new(name: store_name)

print "Enter annual revenue: "
annual_revenue = gets.chomp.to_i  # Convert input to integer
new_store.annual_revenue = annual_revenue

print "Does the store carry men's apparel? (true/false): "
mens_apparel = gets.chomp.downcase == "true"
new_store.mens_apparel = mens_apparel

print "Does the store carry women's apparel? (true/false): "
womens_apparel = gets.chomp.downcase == "true"
new_store.womens_apparel = womens_apparel

if new_store.valid?
  new_store.save
  puts "Store created successfully!"
else
  puts "Error creating store:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
