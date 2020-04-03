class Smallproject < ApplicationRecord
  belongs_to :user

  
  before_save do
    self.product_total   = [total_wo_thrad_btat, product_thrad, product_btat].compact.sum  
  end

end
