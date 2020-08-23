# frozen_string_literal: true

class Aqiq < ApplicationRecord
  belongs_to :user

  validates :aqiq_produce, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :thrad_produce, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :from_althlya_to_almzree, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :from_althlya_to_baljurashy, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :from_althlya_to_shahba, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :from_althlya_to_aradah, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :from_althlya_to_abdan, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :albaha_shahba1, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :albaha_shahba2, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :almzree, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bany_dhabyan, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :almusa, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :baljurashy, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bany_kaber, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :alhbees, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bany_saeed, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bany_heda, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :algabar_alawla, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :algabar_alsufla, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :blue, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :jarab, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :alaunog, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :almshereef, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :alamer_faisal_Tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :almzree_mnahel, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :baljurashy_mnahel, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bany_kabeer_mnahel, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :allehyan_mnahel, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :alsenaeeh_mnahel, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :date, presence: true

  before_save do
    self.total_produce = [aqiq_produce, thrad_produce, from_althlya_to_almzree, from_althlya_to_baljurashy, from_althlya_to_shahba].compact.sum
    self.total_albaha_distribution = [albaha_shahba1, albaha_shahba2, almzree, bany_dhabyan, almusa].compact.sum
    self.baljurashy_total_distribution = [baljurashy, bany_kaber, alhbees, bany_saeed, bany_heda, algabar_alawla, algabar_alsufla].compact.sum
    self.aqiq_total_distribution = [blue, jarab, alaunog, almshereef, alamer_faisal_Tank].compact.sum
    self.almnahel_total = [almzree_mnahel, baljurashy_mnahel, bany_kabeer_mnahel, allehyan_mnahel, alsenaeeh_mnahel].compact.sum
    self.total_distribution = [total_produce, total_albaha_distribution, baljurashy_total_distribution, aqiq_total_distribution, almnahel_total].compact.sum
  end

  def tahliah_total
    [
      from_althlya_to_almzree,
      from_althlya_to_baljurashy,
      from_althlya_to_shahba,
      from_althlya_to_aradah,
      from_althlya_to_abdan,
    ].compact.sum
  end

  def plant_total
    [
      aqiq_produce,
    ].compact.sum
  end

  def produces_total
    [
      aqiq_produce, 
      thrad_produce, 
      from_althlya_to_almzree, 
      from_althlya_to_baljurashy, 
      from_althlya_to_shahba,
      from_althlya_to_aradah,
      from_althlya_to_abdan,
    ].compact.sum
  end

  def distributions_total
    [
      albaha_shahba1,
      albaha_shahba2,
      almzree,
      bany_dhabyan,
      almusa,
      baljurashy,
      bany_kaber,
      alhbees,
      bany_saeed,
      bany_heda,
      algabar_alawla,
      algabar_alsufla,
      blue,
      jarab,
      alaunog,
      almshereef,
      alamer_faisal_Tank,      
    ].compact.sum
end

end
