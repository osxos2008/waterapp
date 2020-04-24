class CreateYabs < ActiveRecord::Migration[6.0]
  def change
    create_table :yabs do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.float :yabs_produce
      t.float :yabs_distribution
      t.float :batat_distribution
      t.float :yabs_tank

      t.timestamps
    end
  end
end
