class Yab < ApplicationRecord
  belongs_to :user

  validates :yabs_produce, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :yabs_distribution, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :batat_distribution, presence: true, length: { mimimum: 1 , maximum: 5 }
  validates :yabs_tank, presence: true, length: { mimimum: 1 , maximum: 5 }
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
