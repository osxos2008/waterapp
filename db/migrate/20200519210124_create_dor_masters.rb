class CreateDorMasters < ActiveRecord::Migration[6.0]
  def change
    create_table :dor_masters do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
