require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Create Store class that inherits from ActiveRecord::Base
class Store < ActiveRecord::Base
end

# Create 3 stores
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Output the number of stores
puts "Number of stores: #{Store.count}"
