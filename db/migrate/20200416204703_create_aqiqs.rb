class CreateAqiqs < ActiveRecord::Migration[6.0]
  def change
    create_table :aqiqs do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.string :product
      t.float :aqiq_produce
      t.float :thrad_produce
      t.float :from_althlya_to_almzree
      t.float :from_althlya_to_baljurashy
      t.float :from_althlya_to_shahba
      t.float :from_althlya_to_aradah
      t.float :from_althlya_to_abdan
      t.float :total_produce
      t.string :distribution
      t.float :albaha_shahba1
      t.float :albaha_shahba2
      t.float :almzree
      t.float :bany_dhabyan
      t.float :almusa
      t.float :total_albaha_distribution
      t.float :baljurashy
      t.float :bany_kaber
      t.float :alhbees
      t.float :bany_saeed
      t.float :bany_heda
      t.float :algabar_alawla
      t.float :algabar_alsufla
      t.float :baljurashy_total_distribution
      t.float :blue
      t.float :jarab
      t.float :alaunog
      t.float :almshereef
      t.float :alamer_faisal_Tank
      t.float :aqiq_total_distribution
      t.string :almnahel
      t.float :almzree_mnahel
      t.float :baljurashy_mnahel
      t.float :bany_kabeer_mnahel
      t.float :allehyan_mnahel
      t.float :alsenaeeh_mnahel
      t.float :almnahel_total
      t.float :total_distribution

      t.timestamps
    end
  end
end
