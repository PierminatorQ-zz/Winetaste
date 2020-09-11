class Wine < ApplicationRecord
  has_many :winestrains
  has_many :strains, through: :winestrains


  def addStrainPercent(percents)
    percents.each do |strain_id, percentage|
      if percentage != ''
        temp_strain= self.winestrains.where(strain_id: strain_id).first
        temp_strain.percentage = percentage
        temp_strain.save
      end
    end
  end

  def getPercentageByStrainId(strain_id)
    if self.winestrains.where(strain_id: strain_id.to_i).first
      self.winestrains.where(strain_id: strain_id.to_i).first.percentage
    end
  end
  

end
