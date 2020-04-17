class Aqiq < ApplicationRecord
  belongs_to :user

  before_save do

    self.total_produce = [aqiq_produce, thrad_produce,from_althlya_to_almzree, from_althlya_to_baljurashy, from_althlya_to_shahba].compact.sum
    self.total_albaha_distribution = [albaha_shahba1, albaha_shahba2, almzree, bany_dhabyan, almusa].compact.sum
    self.baljurashy_total_distribution = [baljurashy, bany_kaber, alhbees, bany_saeed, bany_heda, algabar_alawla, algabar_alsufla].compact.sum
    self.aqiq_total_distribution = [blue, jarab, alaunog, almshereef, alamer_faisal_Tank].compact.sum
    self.almnahel_total = [almzree_mnahel, baljurashy_mnahel, bany_kabeer_mnahel, allehyan_mnahel, alsenaeeh_mnahel].compact.sum
    self.total_distribution = [total_produce, total_albaha_distribution, baljurashy_total_distribution, aqiq_total_distribution, almnahel_total].compact.sum
  
  end
end
