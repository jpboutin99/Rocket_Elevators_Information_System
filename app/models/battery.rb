class Battery < ApplicationRecord
  belongs_to :building
  belongs_to :Rocket_Elevator_Manager, :class_name => 'Employee', :foreign_key => 'employee_id'

  has_many :column
end
