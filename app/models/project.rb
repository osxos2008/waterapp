class Project < ApplicationRecord
  belongs_to :user
  belongs_to :assignee, class_name: "User"

  def self.projects_map
    {
      1 => {
        company_name: 'شركة الرويتع',
        name: 'الجنابين',
        number: 1
      },
      2 => {
        company_name: 'شركة البكري',
        name: 'تهامة الشامل',
        number: 2
      },
      3 => {
        company_name: 'شركة إيلاف',
        name: 'الأشياب والسقيا',
        number: 3
      },
      4 => {
        company_name: 'شركة سايسب',
        name: 'عردة',
        number: 4
      },
      5 => {
        company_name: 'مؤسسة الوجناء',
        name: 'المشاريع المصغرة',
        number: 5
      }
      
      
    }
  end
end
