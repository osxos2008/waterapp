class ChangeFormAltahliahToNaqalName < ActiveRecord::Migration[6.0]
  def change
    rename_column :aradahs, :FormAltahliahToNaqal, :from_altahliah_to_naqal
  end
end
