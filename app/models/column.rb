class Column < ApplicationRecord
  
  def column_type_enum
    [['Residential', 0],['Commercial',1],['Corporate',2],['Hybrid',3]]
  end
  
  
  belongs_to :battery
  has_many :elevator
  rails_admin do
    edit do
      exclude_fields :elevator
    end
  end
end
