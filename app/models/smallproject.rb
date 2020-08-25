class Smallproject < ApplicationRecord
  belongs_to :user


  validates :total_wo_thrad_btat, 
            :product_thrad, 
            :product_btat, 
            :albaha, 
            :bljorashy, 
            :alqora, 
            :almandaq, 
            :alaqeq, 
            :almekhwah, 
            :qolwah, 
            :alhgrah,
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
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
