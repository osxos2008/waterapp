class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :districts
  has_many :aljnabens
  has_many :alashiab_alsoqia
  has_many :smallprojects
  has_many :tohamhalshamels
  has_many :aradahs
  has_many :aqiqs
  has_many :yabs
  has_many :aqiq_thrad_tanks
end
