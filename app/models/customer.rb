class Customer < ApplicationRecord
  belongs_to :user
  belongs_to :address
  has_one :building
  has_one :lead
  def name
    "#{self.business_name}"
  end
end
