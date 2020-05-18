class AradahTank < ApplicationRecord
  belongs_to :user

  validates :aradah_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :naqal_plant1_tnak, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mashoqah_plant2_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :ras_manhal_plant3_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alqesma_plant4_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :validates :thraween_plant5_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bani_adwan_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mashoqa_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bedah_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :al_musa_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :marawah_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qaran_dabi_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alhalah_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :balqazmar_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bani_hasan_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alqalab_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :daws_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :sayhan_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alkahelah_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :balhakam_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :aljwfaa_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :date, presence: true
  
end
