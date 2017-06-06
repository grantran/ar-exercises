require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Rails 5: ApplicationRecord, Rails 4: ActiveRecord::Base
class Store < ActiveRecord::Base

  burnaby = 
  Store.create(name: 'Burnaby', annual_revenue: 300000, 
  mens_apparel: true,
  womens_apparel: true)  

  richmond = 
  Store.create(name: 'Richmond', annual_revenue: 1260000, 
  mens_apparel: false,
  womens_apparel: true)

  gastown = 
  Store.create(name: 'Gastown', annual_revenue: 190000, 
  mens_apparel: true,
  womens_apparel: false)
end

puts Store.count('id')