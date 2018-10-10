class Building < ApplicationRecord
  belongs_to :customer
  belongs_to :address
  has_one :battery
  has_many :building_details
  def name
    "#{self.building_name}"
  end
end
