require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
  validates:first_name, presence: {message: 'cannot be blank'}
  validates:last_name, presence: {message: 'cannot be blank'}
  validates:hourly_rate, :numericality => {:only_integer => true,
    :greater_than => 30, :less_than => 200, message: 'must be number between 30/200'}
  validates:store_id, presence: {message: 'must belong to a store'}
  

end

@store1.employees.create(first_name: "Khurram", 
  last_name: "Virani", 
  hourly_rate: 60)

@store2.employees.create(first_name: "Grant",
  last_name: "Tran",
  hourly_rate: 35)

@store2.employees.create(first_name: "Spencer", 
  last_name: "Ang",
  hourly_rate: 240)