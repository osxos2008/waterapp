class Aljnaben < ApplicationRecord
  belongs_to :user

  validates :purification_station, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alrahwah_Well, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :quantity_sent_from_desalination, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :abdaan, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alfrya, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alqame, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :shra, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alrahwah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :aljbail_aljnaben, presence: true, length: { mimimum: 1 , maximum: 5 } 
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
