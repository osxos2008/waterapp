class AljnabeenTank < ApplicationRecord
  belongs_to :user
  
  validates :almontag_tank, 
            :aljbeel_Tank, 
            :abdan_tank, 
            :alfryh_tank,
            :algema_tank, 
            :shra_tank, 
            :alrahwa_tank,
            presence: true, 
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" }  
  validates :date, presence: true

end
