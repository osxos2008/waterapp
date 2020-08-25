class Tohamhalshamel < ApplicationRecord
  belongs_to :user
  
  validates :alahsabiawell_almekhwah, 
            :doqahwell_qlwah, 
            :doqatabdulhamedwell, 
            :elepwell_alhjrah, 
            :alrmedahwell, 
            :almekhwah, 
            :qlwah, 
            :doqatabdulhamed, 
            :alhjrah, 
            :ghamidalznad, 
            :nsbah, 
            :almswdah, 
            :nawan, 
            :shmalalmekhwah, 
            :nera, 
            :mmna, 
            :bneatta, 
            :algreen, 
            :alrmedah,
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
  validates :date, presence: true

  before_save do
    self.product_total  = [alahsabiawell_almekhwah, doqahwell_qlwah, doqatabdulhamedwell, elepwell_alhjrah, alrmedahwell].compact.sum 
    self.networks_total = [almekhwah, qlwah, doqatabdulhamed, alhjrah].compact.sum
    self.almnahl_total  = [ghamidalznad, nsbah, almswdah, nawan, shmalalmekhwah, nera, mmna, bneatta, algreen, alrmedah].compact.sum 
    self.distribution_total = [networks_total, almnahl_total].compact.sum
  end

  def well_total
    [
      alahsabiawell_almekhwah, 
      doqahwell_qlwah, 
      doqatabdulhamedwell, 
      elepwell_alhjrah, 
      alrmedahwell,
    ].compact.sum
  end

  def produces_total
    [
      alahsabiawell_almekhwah, 
      doqahwell_qlwah, 
      doqatabdulhamedwell, 
      elepwell_alhjrah, 
      alrmedahwell,
    ].compact.sum
  end

  def distributions_total
    [
      almekhwah, 
      qlwah, 
      doqatabdulhamed, 
      alhjrah,     
    ].compact.sum
  end
end
