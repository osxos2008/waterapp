class Aradah < ApplicationRecord
  belongs_to :user

  validates :wells, presence: true, length: { mimimum: 1 , maximum: 5 } 
  #validates :from_altahliah_to_naqal, presence: false, length: { mimimum: 1 , maximum: 5 } 
  validates :from_thrawen_tank, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qnet_alqsmh, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qnet_althrawen, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qnet_althrawen_alatawlah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qnet_bneedwan1, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qnet_bneedwan2, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qnet_bedah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qnet_mashoqah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mrawah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bnenet_blkhzmr, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bnenet_bnehasan, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_alhalah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_alkhlb, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_dos, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_alkahla1, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_alkahla2, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_sehan, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_blhkm, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mnet_aljawfaa, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bnet_almosa, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bnet_qrnthbe, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qshep_nkhal, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qshep_alqsmh, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qshep_althrawen, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qshep_bneodwan, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :qshep_mashoqah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bneshep_blkhzmr, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bneshep_bnehasan, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mshep_alhalah, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :mshep_dos, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :bshep_almosa, presence: true, length: { mimimum: 1 , maximum: 5 } 
  validates :date, presence: true

  before_save do
    self.product_total   = [wells, from_altahliah_to_naqal, from_thrawen_tank ].compact.sum 
    self.qnet_total   = [qnet_alqsmh, qnet_althrawen, qnet_althrawen_alatawlah, qnet_bneedwan1, qnet_bneedwan2, qnet_bedah, qnet_mashoqah, mrawah].compact.sum
    self.bnenet_total   = [bnenet_blkhzmr, bnenet_bnehasan].compact.sum 
    self.mnet_total   = [mnet_alhalah, mnet_alkhlb, mnet_dos, mnet_alkahla1, mnet_alkahla2, mnet_sehan, mnet_blhkm, mnet_aljawfaa].compact.sum 
    self.bnet_total   = [bnet_almosa, bnet_qrnthbe].compact.sum 
    self.network_total   = [qnet_total, bnenet_total, mnet_total, bnet_total].compact.sum 
    self.qshep_total   = [qshep_nkhal, qshep_alqsmh, qshep_althrawen, qshep_bneodwan, qshep_mashoqah].compact.sum 
    self.bneshep_total   = [bneshep_blkhzmr, bneshep_bnehasan].compact.sum 
    self.mshep_total   = [mshep_alhalah, mshep_dos].compact.sum 
    self.mnahel_total   = [qshep_total, bneshep_total, bneshep_total, bshep_almosa].compact.sum 
    self.distripution_total   = [network_total, mnahel_total].compact.sum
    self.date = created_at.to_date
  end

  def tahliah_total
    [
      from_altahliah_to_naqal,
      from_thrawen_tank,
    ].compact.sum
  end
  
  def produces_total
    [
      wells, 
      from_thrawen_tank, 
      form_altahliah_to_naqal,
    ].comapct.sum
  end

  def distributions_total
    [
      qnet_alqsmh,
      qnet_althrawen,
      qnet_althrawen_alatawlah,
      qnet_bneedwan1,
      qnet_bneedwan2,
      qnet_bedah,
      qnet_mashoqah,
      mrawah,
      bnenet_blkhzmr,
      bnenet_bnehasan,
      mnet_alhalah,
      mnet_alkhlb,
      mnet_dos,
      mnet_alkahla1,
      mnet_alkahla2,
      mnet_sehan,
      mnet_blhkm,
      mnet_aljawfaa,
      bnet_almosa,
      bnet_qrnthbe,           
    ].compact.sum
  end

end
