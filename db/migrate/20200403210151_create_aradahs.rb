class CreateAradahs < ActiveRecord::Migration[6.0]
  def change
    create_table :aradahs do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :product, :default => "product"
      t.float :wells
      t.float :from_thrawen_tank
      t.float :product_total
      t.string :distribution, :default => "distribution"
      t.string :networks, :default => "networks"
      t.float :qnet_alqsmh
      t.float :qnet_althrawen
      t.float :qnet_althrawen_alatawlah
      t.float :qnet_bneedwan1
      t.float :qnet_bneedwan2
      t.float :qnet_bedah
      t.float :qnet_mashoqah
      t.float :mrawah
      t.float :qnet_total
      t.float :bnenet_blkhzmr
      t.float :bnenet_bnehasan
      t.float :bnenet_total
      t.float :mnet_alhalah
      t.float :mnet_alkhlb
      t.float :mnet_dos
      t.float :mnet_alkahla1
      t.float :mnet_alkahla2
      t.float :mnet_sehan
      t.float :mnet_blhkm
      t.float :mnet_aljawfaa
      t.float :mnet_total
      t.float :bnet_almosa
      t.float :bnet_qrnthbe
      t.float :bnet_total
      t.float :network_total
      t.string :almnahel, :default => "almnahel"
      t.float :qshep_nkhal
      t.float :qshep_alqsmh
      t.float :qshep_althrawen
      t.float :qshep_bneodwan
      t.float :qshep_mashoqah
      t.float :qshep_total
      t.float :bneshep_blkhzmr
      t.float :bneshep_bnehasan
      t.float :bneshep_total
      t.float :mshep_alhalah
      t.float :mshep_dos
      t.float :mshep_total
      t.float :bshep_almosa
      t.float :mnahel_total
      t.float :distripution_total

      t.timestamps
    end
  end
end
