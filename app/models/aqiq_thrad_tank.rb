class AqiqThradTank < ApplicationRecord
  belongs_to :user

  validates :aqiq_station1, 
            :aqiq_station2, 
            :aqiq_station3, 
            :aqiq_station4, 
            :shahbah_tank, 
            :bani_kaber_tank,
            :bani_dhabyan_station_tank, 
            :bani_dahabyan_tank, 
            :bani_hedah_tank, 
            :baljurashy_tank, 
            :thrad_station1_tank,
            :susabad_station_tank, 
            :mushereef_tank, 
            :aunoq_tank, 
            :jarab_tank, 
            :blue_tank, 
            :thrad_station2_tank,
            :thrad_station3_tank, 
            :thrad_station4_tank, 
            :almzree_tank, 
            :thrad_station5_tank, 
            :bani_saeed_tank,
            :aom_gayth_tank, 
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
  validates :date, presence: true
end
