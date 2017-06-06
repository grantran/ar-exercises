require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Choose new store name: "
print "> "
store_name = gets.chomp

puts "Revenue Number: "
print "> "
store_revenue = gets.chomp

puts "Mens Apparel? T/F"
print "> "
mens_apparel = gets.chomp

puts "Womens Apparel? T/F"
print "> "
womens_apparel = gets.chomp

newStore = Store.create(name: store_name, annual_revenue: store_revenue,
  mens_apparel: mens_apparel,
  womens_apparel: womens_apparel)

p newStore.errors[:name]
p newStore.errors[:annual_revenue]
