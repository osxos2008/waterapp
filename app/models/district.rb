class District < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :water_liter_delivereds
end
