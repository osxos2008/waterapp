class CreateAlashiabAlsoqia < ActiveRecord::Migration[6.0]
  def change
    create_table :alashiab_alsoqia do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.float :almzre_soqia
      t.float :almzre_naqlat
      t.float :bljorashy_soqia
      t.float :bljorashy_naqlat
      t.float :bnekbeer_soqia
      t.float :bnekbeer_naqlat
      t.float :almosa_soqia
      t.float :almosa_naqlat
      t.float :aljnaben_soqia
      t.float :aljnaben_naqlat
      t.float :alaqeq_soqia
      t.float :alaqeq_naqlat
      t.float :lef_soqia
      t.float :lef_naqlat
      t.float :bnehasan_soqia
      t.float :bnehasan_naqlat
      t.float :alhlah_soqia
      t.float :alhalah_naqlat
      t.float :dos_soqia
      t.float :dos_naqlat
      t.float :blkhzmr_soqia
      t.float :blkhzmr_naqlat
      t.float :bneadwan_soqia
      t.float :bneadwan_naqlat
      t.float :althrawen_soqia
      t.float :althrawen_naqlat
      t.float :alqsmh_soqia
      t.float :alqsmh_naqlat
      t.float :nbhan_soqia
      t.float :nbhan_naqlat
      t.float :nkhal_soqia
      t.float :nkhal_naqlat
      t.float :kra_soqia
      t.float :kra_naqlat
      t.float :ghamidalznad_soqia
      t.float :ghamidalznad_naqlat
      t.float :tota_soqia
      t.float :total_naqlat

      t.timestamps
    end
  end
end
