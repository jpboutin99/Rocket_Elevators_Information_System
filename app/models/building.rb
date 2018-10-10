class Building < ApplicationRecord
  belongs_to :customer
  belongs_to :address
  has_one :battery
  def name
    "#{self.building_name}"
  end
end
