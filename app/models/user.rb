class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :aljnabens
  has_many :alashiab_alsoqia
  has_many :smallprojects
  has_many :tohamhalshamels
  has_many :aradahs
  has_many :aqiqs
  has_many :yabs
  has_many :aqiq_thrad_tanks
  has_many :aljnabeen_tanks
  has_many :aradah_tanks
  has_many :tohamhalshamel_tanks
  has_many :dor_masters

  before_save do
    self.project  = project.compact
  #noEmptyCities = permissions.reject { |c| c.empty? }
  end

end
