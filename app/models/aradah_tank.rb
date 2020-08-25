class AradahTank < ApplicationRecord
  belongs_to :user

  validates :aradah_plant_tank, 
            :naqal_plant1_tnak, 
            :mashoqah_plant2_tank, 
            :ras_manhal_plant3_tank, 
            :alqesma_plant4_tank, 
            :thraween_plant5_tank, 
            :bani_adwan_tank, 
            :mashoqa_tank, 
            :bedah_tank, 
            :al_musa_tank, 
            :marawah_tank, 
            :qaran_dabi_tank, 
            :alhalah_tank, 
            :balqazmar_tank, 
            :bani_hasan_tank, 
            :alqalab_tank, 
            :daws_tank, 
            :sayhan_tank, 
            :alkahelah_tank, 
            :balhakam_tank, 
            :aljwfaa_tank, 
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
  validates :date, presence: true
  
end
