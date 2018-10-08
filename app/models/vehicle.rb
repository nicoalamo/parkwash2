class Vehicle < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle_size
end
