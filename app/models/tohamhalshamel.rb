class Tohamhalshamel < ApplicationRecord
  belongs_to :user
  
  validates :alahsabiawell_almekhwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :doqahwell_qlwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :doqatabdulhamedwell, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :elepwell_alhjrah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alrmedahwell, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :almekhwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qlwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :doqatabdulhamed, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alhjrah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :ghamidalznad, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :nsbah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :almswdah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :nawan, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :shmalalmekhwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :nera, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mmna, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bneatta, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :algreen, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alrmedah, presence: true, length: { mimimum: 1 , maximum: 5 }
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
