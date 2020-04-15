class Project < ApplicationRecord
  belongs_to :user
  belongs_to :assignee, class_name: "User"
  include Rails.application.routes.url_helpers

  def self.projects_map
    {
      1 => {
        company_name: 'شركة الرويتع',
        name: 'الجنابين',
        number: 1,
        path: Rails.application.routes.url_helpers.new_aljnaben_path
      },
      2 => {
        company_name: 'شركة البكري',
        name: 'تهامة الشامل',
        number: 2,
        pathh: Rails.application.routes.url_helpers.new_tohamhalshamel_path
      },
      3 => {
        company_name: 'شركة إيلاف',
        name: 'الأشياب والسقيا',
        number: 3,
        Pathh: Rails.application.routes.url_helpers.new_alashiab_alsoqium_path
      },
      4 => {
        company_name: 'شركة سايسب',
        name: 'عردة',
        number: 4,
        Pathh: Rails.application.routes.url_helpers.new_aradah_path
      },
      5 => {
        company_name: 'مؤسسة الوجناء',
        name: 'المشاريع المصغرة',
        number: 5,
        Pathh: Rails.application.routes.url_helpers.new_smallproject_path
      }
      
      
    }
  end
end
