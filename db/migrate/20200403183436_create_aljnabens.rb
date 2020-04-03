class CreateAljnabens < ActiveRecord::Migration[6.0]
  def change
    create_table :aljnabens do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :product, :default => "product"
      t.float :purification_station
      t.float :alrahwah_Well
      t.float :quantity_sent_from_desalination
      t.float :product_total
      t.string :distribution, :default => "distribution"
      t.string :networks, :default => "networks"
      t.float :abdaan
      t.float :alfrya
      t.float :alqame
      t.float :shra
      t.float :alrahwah
      t.float :networks_total
      t.string :almnahel, :default => "almnahel"
      t.float :aljbail_aljnaben
      t.float :distribution_total

      t.timestamps
    end
  end
end
