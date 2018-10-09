class Building < ApplicationRecord
  belongs_to :customer
  belongs_to :addresses
end
