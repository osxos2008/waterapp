class AddFromAltahliahToNaqalToAradahs < ActiveRecord::Migration[6.0]
  def change
    add_column :aradahs, :FormAltahliahToNaqal, :float
  end
end
