class Strain < ApplicationRecord
  has_many :winestrains
  has_many :wines, through: :winestrains
  validates :name, uniqueness: true
  validates :name, presence: true
end
