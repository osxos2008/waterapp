# frozen_string_literal: true

class Aqiq < ApplicationRecord
  belongs_to :user

  validates :aqiq_produce, 
            :thrad_produce, 
            :from_althlya_to_almzree, 
            :from_althlya_to_baljurashy, 
            :from_althlya_to_shahba,
            :from_althlya_to_aradah, 
            :from_althlya_to_abdan, 
            :albaha_shahba1, 
            :albaha_shahba2, 
            :almzree, 
            :bany_dhabyan, 
            :almusa,
            :baljurashy, 
            :bany_kaber, 
            :alhbees, 
            :bany_saeed, 
            :bany_heda, 
            :algabar_alawla, 
            :algabar_alsufla, 
            :blue, 
            :jarab,
            :alaunog, 
            :almshereef, 
            :alamer_faisal_Tank, 
            :almzree_mnahel, 
            :baljurashy_mnahel, 
            :bany_kabeer_mnahel,
            :allehyan_mnahel, 
            :alsenaeeh_mnahel, 
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
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
