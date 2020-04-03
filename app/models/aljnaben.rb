class Aljnaben < ApplicationRecord
  belongs_to :user


  before_save do
    self.product_total   = [purification_station, alrahwah_Well, quantity_sent_from_desalination].compact.sum 
    self.networks_total   = [abdaan, alfrya, alqame, shra, alrahwah].compact.sum
    self.distribution_total   = [networks_total, aljbail_aljnaben].compact.sum 
  end
end
