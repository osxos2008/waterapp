class CreateSmallprojects < ActiveRecord::Migration[6.0]
  def change
    create_table :smallprojects do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :smallproject , :default => "smallproject"
      t.float :total_wo_thrad_btat
      t.float :product_thrad
      t.float :product_btat
      t.float :product_total
      t.string :detailed_production , :default => "detailed_production"
      t.float :albaha
      t.float :bljorashy
      t.float :alqora
      t.float :almandaq
      t.float :alaqeq
      t.float :almekhwah
      t.float :qolwah
      t.float :alhgrah

      t.timestamps
    end
  end
end
