class AqiqThradTank < ApplicationRecord
  belongs_to :user

  validates :aqiq_station1, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :aqiq_station2, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :aqiq_station3, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :aqiq_station4, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :shahbah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bani_kaber_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bani_dhabyan_station_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bani_dahabyan_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bani_hedah_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :baljurashy_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :thrad_station1_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :susabad_station_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :mushereef_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :aunoq_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :jarab_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :blue_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :thrad_station2_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :thrad_station3_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :thrad_station4_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :almzree_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :thrad_station5_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :bani_saeed_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :aom_gayth_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :date, presence: true
end
