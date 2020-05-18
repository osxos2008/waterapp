class TohamhalshamelTank < ApplicationRecord
  belongs_to :user

  validates :almaqwa_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :gamed_znad_tank1, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :gamed_znad_tank2, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :gamed_znad_tajmee3_tank3, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :nasbah_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :almswadah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :nasbah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :alahsabah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :nawan_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :maqwah_tajme3_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :maqwah_north_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :maqwah_north_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :mamna_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :mamna_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :nera_plant1_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :nera_plant2_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :nera3_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :qelwah_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :qelwah_tajme3_Tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :dogah_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :dogah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :rmaydah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :hajrah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bani_ata_plant_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bani_ata_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :aljareen_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :date, presence: true

end
