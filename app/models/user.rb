class User < ApplicationRecord
    has_many :projects
    has_many :districts
    has_many :water_liter_delivered
end
