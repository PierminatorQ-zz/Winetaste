class Magazine < ApplicationRecord
  has_many :magazineoenologistjobtitles
  has_many :oenologists, through: :magazineoenologistjobtitles
  has_many :jobtitles, through: :magazineoenologistjobtitles
end
