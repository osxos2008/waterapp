class Yab < ApplicationRecord
  belongs_to :user

  validates :yabs_produce, 
            :yabs_distribution,
            :batat_distribution,
            :yabs_tank,
            presence: true,
            numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" } 
  validates :date, presence: true

  def well_total
[
  yabs_produce,
].compact.sum
  end

  def produces_total
    [
      yabs_produce,
    ].compact.sum
  end

  def distributions_total
    [
      yabs_distribution, 
      batat_distribution,        
    ].compact.sum
  end

end
