class TohamhalshamelTank < ApplicationRecord
  belongs_to :user

  validates :almaqwa_plant_tank,
            :gamed_znad_tank1,
            :gamed_znad_tank2,
            :gamed_znad_tajmee3_tank3,
            :nasbah_plant_tank,
            :almswadah_tank,
            :nasbah_tank,
            :alahsabah_tank,
            :nawan_tank,
            :maqwah_tajme3_tank,
            :maqwah_north_plant_tank,
            :maqwah_north_tank,
            :mamna_plant_tank,
            :mamna_tank,
            :nera_plant1_tank,
            :nera_plant2_tank,
            :nera3_tank,
            :qelwah_plant_tank,
            :qelwah_tajme3_Tank,
            :dogah_plant_tank,
            :dogah_tank,
            :rmaydah_tank,
            :hajrah_tank,
            :bani_ata_plant_tank,
            :bani_ata_tank,
            :aljareen_tank,
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
  validates :date, presence: true

end
