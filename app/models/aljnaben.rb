class Aljnaben < ApplicationRecord
  belongs_to :user

  validates :purification_station,
            :alrahwah_Well,
            :quantity_sent_from_desalination,
            :abdaan,
            :alfrya,
            :alqame,
            :shra,
            :alrahwah,
            :aljbail_aljnaben, 
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
  validates :date, presence: true


 
  before_save do
    self.product_total   = [purification_station, alrahwah_Well, quantity_sent_from_desalination].compact.sum 
    self.networks_total   = [abdaan, alfrya, alqame, shra, alrahwah].compact.sum
    self.distribution_total   = [networks_total, aljbail_aljnaben].compact.sum 
  end

def plant_total
  [
    purification_station,
  ].compact.sum
end

def small_well_total
  [
    alrahwah_Well,
  ].compact.sum
end

def produces_total
  [
    purification_station, 
    alrahwah_Well,
  ].compact.sum
end

def distributions_total
  [
    abdaan, 
    alfrya, 
    alqame, 
    shra, 
    alrahwah,        
  ].compact.sum
end
end
