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
  has_many :water_liter_delivereds
end
