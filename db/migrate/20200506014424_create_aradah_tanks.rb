class CreateAradahTanks < ActiveRecord::Migration[6.0]
  def change
    create_table :aradah_tanks do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.float :aradah_plant_tank
      t.float :naqal_plant1_tnak
      t.float :mashoqah_plant2_tank
      t.float :ras_manhal_plant3_tank
      t.float :alqesma_plant4_tank
      t.float :thraween_plant5_tank
      t.float :bani_adwan_tank
      t.float :mashoqa_tank
      t.float :bedah_tank
      t.float :al_musa_tank
      t.float :marawah_tank
      t.float :qaran_dabi_tank
      t.float :alhalah_tank
      t.float :balqazmar_tank
      t.float :bani_hasan_tank
      t.float :alqalab_tank
      t.float :daws_tank
      t.float :sayhan_tank
      t.float :alkahelah_tank
      t.float :balhakam_tank
      t.float :aljwfaa_tank

      t.timestamps
    end
  end
end
