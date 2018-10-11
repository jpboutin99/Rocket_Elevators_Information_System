class Building < ApplicationRecord
  belongs_to :customer
  belongs_to :address
  has_one :battery
  has_many :building_details
  def name
    "#{self.administrator_full_name}"
  end

end
