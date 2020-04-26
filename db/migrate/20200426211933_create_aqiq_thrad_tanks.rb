class CreateAqiqThradTanks < ActiveRecord::Migration[6.0]
  def change
    create_table :aqiq_thrad_tanks do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.float :aqiq_station1
      t.float :aqiq_station2
      t.float :aqiq_station3
      t.float :aqiq_station4
      t.float :shahbah_tank
      t.float :bani_kaber_tank
      t.float :bani_dhabyan_station_tank
      t.float :bani_dahabyan_tank
      t.float :bani_hedah_tank
      t.float :baljurashy_tank
      t.float :thrad_station1_tank
      t.float :susabad_station_tank
      t.float :mushereef_tank
      t.float :aunoq_tank
      t.float :jarab_tank
      t.float :blue_tank
      t.float :thrad_station2_tank
      t.float :thrad_station3_tank
      t.float :thrad_station4_tank
      t.float :almzree_tank
      t.float :thrad_station5_tank
      t.float :bani_saeed_tank
      t.float :aom_gayth_tank

      t.timestamps
    end
  end
end
