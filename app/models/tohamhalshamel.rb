class Tohamhalshamel < ApplicationRecord
  belongs_to :user

  before_save do
    self.product_total  = [alahsabiawell_almekhwah, doqahwell_qlwah, doqatabdulhamedwell, elepwell_alhjrah, alrmedahwell].compact.sum 
    self.networks_total = [almekhwah, qlwah, doqatabdulhamed, alhjrah].compact.sum
    self.almnahl_total  = [ghamidalznad, nsbah, almswdah, nawan, shmalalmekhwah, nera, mmna, bneatta, algreen, alrmedah].compact.sum 
    self.distribution_total = [networks_total, almnahl_total].compact.sum
  end
end
