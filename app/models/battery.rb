class Battery < ApplicationRecord

  def battery_type_enum
    [['Residential', 0],['Commercial',1],['Corporate',2],['Hybrid',3]]
  end

  belongs_to :building
  belongs_to :Rocket_Elevator_Manager, :class_name => 'Employee', :foreign_key => 'employee_id'

  has_many :column
end
