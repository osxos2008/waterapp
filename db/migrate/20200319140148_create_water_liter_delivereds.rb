class CreateWaterLiterDelivereds < ActiveRecord::Migration[6.0]
  def change
    create_table :water_liter_delivereds do |t|
      t.float :quantity
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :district, null: false, foreign_key: true

      t.timestamps
    end
  end
end
