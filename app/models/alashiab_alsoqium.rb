class AlashiabAlsoqium < ApplicationRecord
    belongs_to :user

    validates :almzre_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :almzre_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bljorashy_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bljorashy_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bnekbeer_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bnekbeer_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :almosa_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :almosa_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :aljnaben_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :aljnaben_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :alaqeq_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :alaqeq_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :lef_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :lef_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bnehasan_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bnehasan_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :alhlah_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :alhalah_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :dos_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :dos_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :blkhzmr_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :blkhzmr_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bneadwan_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :bneadwan_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :althrawen_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :althrawen_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :alqsmh_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :alqsmh_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :nbhan_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :nbhan_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :nkhal_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :nkhal_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :kra_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :kra_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :ghamidalznad_soqia, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :ghamidalznad_naqlat, presence: true, length: { mimimum: 1 , maximum: 5 }
    validates :date, presence: true

    before_save do
        self.tota_soqia   = [almzre_soqia, bljorashy_soqia, bnekbeer_soqia, almosa_soqia, aljnaben_soqia, alaqeq_soqia, lef_soqia, bnehasan_soqia, alhlah_soqia, dos_soqia, blkhzmr_soqia, bneadwan_soqia, althrawen_soqia, alqsmh_soqia, nbhan_soqia, nkhal_soqia, kra_soqia, ghamidalznad_soqia].compact.sum 
        self.total_naqlat   = [ghamidalznad_naqlat, kra_naqlat, nkhal_naqlat, nbhan_naqlat, alqsmh_naqlat,althrawen_naqlat,bneadwan_naqlat,blkhzmr_naqlat,dos_naqlat,alhalah_naqlat,bnehasan_naqlat,lef_naqlat,alaqeq_naqlat,aljnaben_naqlat,almosa_naqlat,bnekbeer_naqlat,bljorashy_naqlat,almzre_naqlat].compact.sum
    end

def alashiabb_total
   [
    ghamidalznad_naqlat, 
    kra_naqlat, 
    nkhal_naqlat, 
    nbhan_naqlat, 
    alqsmh_naqlat,
    althrawen_naqlat,
    bneadwan_naqlat,
    blkhzmr_naqlat,
    dos_naqlat,
    alhalah_naqlat,
    bnehasan_naqlat,
    lef_naqlat,alaqeq_naqlat,
    aljnaben_naqlat,almosa_naqlat,
    bnekbeer_naqlat,bljorashy_naqlat,
    almzre_naqlat,
    ].compact.sum
end

def distributions_total
    [
    ghamidalznad_naqlat, 
    kra_naqlat, 
    nkhal_naqlat, 
    nbhan_naqlat, 
    alqsmh_naqlat,
    althrawen_naqlat,
    bneadwan_naqlat,
    blkhzmr_naqlat,
    dos_naqlat,
    alhalah_naqlat,
    bnehasan_naqlat,
    lef_naqlat,alaqeq_naqlat,
    aljnaben_naqlat,almosa_naqlat,
    bnekbeer_naqlat,bljorashy_naqlat,
    almzre_naqlat,        
    ].compact.sum
end
end
