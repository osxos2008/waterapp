class AddFromAltahliahToNaqalToAradahs < ActiveRecord::Migration[6.0]
  def change
    add_column :aradahs, :from_altahliah_to_naqal, :float
  end
end
