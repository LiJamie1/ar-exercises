require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end

@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store1.employees.create(first_name: 'Person', last_name: 'Two', hourly_rate: 60)
@store1.employees.create(first_name: 'Person', last_name: 'Three', hourly_rate: 60)
@store1.employees.create(first_name: 'Person', last_name: 'Four', hourly_rate: 60)
@store1.employees.create(first_name: 'Person', last_name: 'Five', hourly_rate: 60)
@store1.employees.create(first_name: 'Person', last_name: 'Six', hourly_rate: 60)

@store2.employees.create(first_name: 'Person', last_name: 'Seven', hourly_rate: 60)
@store2.employees.create(first_name: 'Person', last_name: 'Eight', hourly_rate: 60)
@store2.employees.create(first_name: 'Person', last_name: 'Nine', hourly_rate: 60)
@store2.employees.create(first_name: 'Person', last_name: 'Ten', hourly_rate: 60)
@store2.employees.create(first_name: 'Person', last_name: 'Eleven', hourly_rate: 60)
@store2.employees.create(first_name: 'Person', last_name: 'Twelve', hourly_rate: 60)
