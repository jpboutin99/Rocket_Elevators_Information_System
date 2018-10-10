class Employee < ApplicationRecord
  belongs_to :user
  has_one :battery

  def name
    "#{self.first_name} #{self.last_name}"
  end

end
