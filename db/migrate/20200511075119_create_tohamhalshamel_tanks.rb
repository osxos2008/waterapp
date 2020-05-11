class CreateTohamhalshamelTanks < ActiveRecord::Migration[6.0]
  def change
    create_table :tohamhalshamel_tanks do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.float :almaqwa_plant_tank
      t.float :gamed_znad_tank1
      t.float :gamed_znad_tank2
      t.float :gamed_znad_tajmee3_tank3
      t.float :nasbah_plant_tank
      t.float :almswadah_tank
      t.float :nasbah_tank
      t.float :alahsabah_tank
      t.float :nawan_tank
      t.float :maqwah_tajme3_tank
      t.float :maqwah_north_plant_tank
      t.float :maqwah_north_tank
      t.float :mamna_plant_tank
      t.float :mamna_tank
      t.float :nera_plant1_tank
      t.float :nera_plant2_tank
      t.float :nera3_tank
      t.float :qelwah_plant_tank
      t.float :qelwah_tajme3_Tank
      t.float :dogah_plant_tank
      t.float :dogah_tank
      t.float :rmaydah_tank
      t.float :hajrah_tank
      t.float :bani_ata_plant_tank
      t.float :bani_ata_tank
      t.float :aljareen_tank

      t.timestamps
    end
  end
end
