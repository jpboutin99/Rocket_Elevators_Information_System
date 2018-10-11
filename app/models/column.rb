class Column < ApplicationRecord
  belongs_to :battery
  has_many :elevator
  rails_admin do
    edit do
      exclude_fields :elevator
    end
  end
end
