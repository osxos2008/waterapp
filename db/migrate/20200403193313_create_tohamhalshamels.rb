class CreateTohamhalshamels < ActiveRecord::Migration[6.0]
  def change
    create_table :tohamhalshamels do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :product, :default => "product"
      t.float :alahsabiawell_almekhwah
      t.float :doqahwell_qlwah
      t.float :doqatabdulhamedwell
      t.float :elepwell_alhjrah
      t.float :alrmedahwell
      t.float :product_total
      t.string :distribution, :default => "distribution"
      t.string :networks, :default => "networks"
      t.float :almekhwah
      t.float :qlwah
      t.float :doqatabdulhamed
      t.float :alhjrah
      t.float :networks_total
      t.string :almnahel, :default => "almnahel"
      t.float :ghamidalznad
      t.float :nsbah
      t.float :almswdah
      t.float :nawan
      t.float :shmalalmekhwah
      t.float :nera
      t.float :mmna
      t.float :bneatta
      t.float :algreen
      t.float :alrmedah
      t.float :almnahl_total
      t.float :distribution_total

      t.timestamps
    end
  end
end
