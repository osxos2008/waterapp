class Project < ApplicationRecord
  belongs_to :user
  belongs_to :assignee, class_name: "User"
  has_many :districts
end
