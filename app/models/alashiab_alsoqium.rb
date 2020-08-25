class AlashiabAlsoqium < ApplicationRecord
    belongs_to :user

    validates   :almzre_soqia, 
                :almzre_naqlat, 
                :bljorashy_soqia, 
                :bljorashy_naqlat, 
                :bnekbeer_soqia, 
                :bnekbeer_naqlat, 
                :almosa_soqia, 
                :almosa_naqlat, 
                :aljnaben_soqia, 
                :aljnaben_naqlat, 
                :alaqeq_soqia, 
                :alaqeq_naqlat, 
                :lef_soqia, 
                :lef_naqlat, 
                :bnehasan_soqia, 
                :bnehasan_naqlat, 
                :alhlah_soqia, 
                :alhalah_naqlat, 
                :dos_soqia, 
                :dos_naqlat, 
                :blkhzmr_soqia, 
                :blkhzmr_naqlat, 
                :bneadwan_soqia, 
                :bneadwan_naqlat, 
                :althrawen_soqia, 
                :althrawen_naqlat, 
                :alqsmh_soqia, 
                :alqsmh_naqlat, 
                :nbhan_soqia, 
                :nbhan_naqlat, 
                :nkhal_soqia, 
                :nkhal_naqlat, 
                :kra_soqia, 
                :kra_naqlat, 
                :ghamidalznad_soqia, 
                :ghamidalznad_naqlat, 
                presence: true,
                numericality: { only_integer: true , message: "أرقام فقط" } , length: { mimimum: 1 , maximum: 8 , message: "الرقم كبير جداً" }
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
