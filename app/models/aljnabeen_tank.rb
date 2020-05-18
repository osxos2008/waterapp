class AljnabeenTank < ApplicationRecord
  belongs_to :user
  
  validates :almontag_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :aljbeel_Tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :abdan_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alfryh_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :algema_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :shra_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :alrahwa_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :date, presence: true

end
