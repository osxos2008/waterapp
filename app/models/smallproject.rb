class Smallproject < ApplicationRecord
  belongs_to :user


  validates :total_wo_thrad_btat, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :product_thrad, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :product_btat, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :albaha, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bljorashy, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alqora, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :almandaq, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alaqeq, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :almekhwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qolwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alhgrah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :date, presence: true
  
  before_save do
    self.product_total   = [total_wo_thrad_btat, product_thrad, product_btat].compact.sum  
  end

def small_well_total
  [
    total_wo_thrad_btat, 
    product_thrad, 
    product_btat,
  ].compact.sum
end

def produces_total
  [
    total_wo_thrad_btat, 
    product_thrad, 
    product_btat,
  ].compact.sum
end

def distributions_total
  [
    total_wo_thrad_btat, 
    product_thrad, 
    product_btat,       
].compact.sum
end
end
