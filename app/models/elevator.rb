class Elevator < ApplicationRecord
  
  def elevator_modele_enum
    [['Standard', 0],['Premium',1],['Excelium',2]]
  end


  def elevator_type_enum
    [['Residential', 0],['Commercial',1],['Corporate',2],['Hybrid',3]]
  end
  
  
  belongs_to :column
end
