class Project < ApplicationRecord
  belongs_to :user
  belongs_to :assignee
  has_many :districts
end
