class Project < ApplicationRecord
  belongs_to :user
  belongs_to :assignee, class_name: "User"
  has_many :districts

  def self.projects_map
    {
      1 => {
        company_name: 'الجنابين',
        name: 'شركة الرويتع',
        number: 1
      },
      2 => {
        company_name: 'تهامة الشامل',
        name: 'شركة البكري',
        number: 2
      }
    }
  end
end
