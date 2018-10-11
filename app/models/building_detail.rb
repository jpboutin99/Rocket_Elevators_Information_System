class BuildingDetail < ApplicationRecord
  belongs_to :building
  def information_key_enum
        [['Number of Floors'],['Building Type'],['Building Architecture'],['Max Occupency'],['Built Year']]
  end
  def name
    "#{self.information_key}: #{self.value}"
  end
 
end
