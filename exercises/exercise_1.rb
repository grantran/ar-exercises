require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Rails 5: ApplicationRecord, Rails 4: ActiveRecord::Base
class Store < ActiveRecord::Base
  has_many :employees
  validates:name, :length => {:minimum => 3, message: "must be longer than 2 chars"}
  validates:annual_revenue, :numericality => {:only_integer => true,
    :greater_than => 0, message: 'must be integer value and between 30/200'}

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