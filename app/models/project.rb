class Project < ApplicationRecord
  belongs_to :user
  belongs_to :assignee, class_name: "User"

  def self.projects_map
    {
      1 => {
        company_name: 'شركة الرويتع',
        name: 'الجنابين',
        number: 1,
        path: :new_aljnaben_path,
        model_class: Aljnaben,
      },
      2 => {
        company_name: 'شركة البكري',
        name: 'تهامة الشامل',
        number: 2,
        path: :new_tohamhalshamel_path,
        model_class: Tohamhalshamel,
      },
      3 => {
        company_name: 'شركة إيلاف',
        name: 'الأشياب والسقيا',
        number: 3,
        path: :new_alashiab_alsoqium_path,
        model_class: AlashiabAlsoqium,
      },
      4 => {
        company_name: 'شركة سايسب',
        name: 'عردة',
        number: 4,
        path: :new_aradah_path,
        model_class: Aradah,
      },
      5 => {
        company_name: 'مؤسسة الوجناء',
        name: 'المشاريع المصغرة',
        number: 5,
        path: :new_smallproject_path,
        model_class: Smallproject,
      },
      6 => {
        company_name: 'شركة الرويتع',
        name: 'العقيق وثراد',
        number: 6,
        path: :new_aqiq_path,
        model_class: Aqiq,
      },
      7 => {
        company_name: 'شركة آل سلامة',
        name: 'بطاط ويبس',
        number: 7,
        path: :new_yab_path,
        model_class: Yab,
      },
      8 => {
        company_name: 'شركة الرويتع',
        name: 'مناسيب مشروع العقيق وثراد',
        number: 8,
        path: :new_aqiq_thrad_tank_path,
        model_class: AqiqThradTank,
      },
      9 => {
        company_name: 'شركة الرويتع',
        name: 'مناسيب مشروع الجنابين',
        number: 9,
        path: :new_aljnabeen_tank_path,
        model_class: AljnabeenTank,
      },
      10 => {
        company_name: 'شركة سايسب',
        name: 'مناسيب مشروع عردة',
        number: 10,
        path: :new_aradah_tank_path,
        model_class: AradahTank,
      },
      11 => {
        company_name: 'شركة البكري',
        name: 'مناسيب مشروع تهامة الشامل',
        number: 11,
        path: :new_tohamhalshamel_tank_path,
        model_class: TohamhalhsamelTank,
      },
    }
  end

  def self.tahliah_projects
    projects_map.slice(4, 6)
  end

  def self.tahliah_projects_totals(date: nil)
    tahliah_projects.values.map do |project|
      project[:model_class].where(date: date || Date.today).map(&:tahliah_total).sum
    end.sum
  end
end
