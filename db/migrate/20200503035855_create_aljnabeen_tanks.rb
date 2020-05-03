class CreateAljnabeenTanks < ActiveRecord::Migration[6.0]
  def change
    create_table :aljnabeen_tanks do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.float :almontag_tank
      t.float :aljbeel_Tank
      t.float :abdan_tank
      t.float :alfryh_tank
      t.float :algema_tank
      t.float :shra_tank
      t.float :alrahwa_tank

      t.timestamps
    end
  end
end
