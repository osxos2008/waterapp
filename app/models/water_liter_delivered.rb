class WaterLiterDelivered < ApplicationRecord
  belongs_to :user
  belongs_to :district
end
