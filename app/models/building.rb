class Building < ApplicationRecord

  # enum kind: [:residential, :commercial, :office, :health, :education, :cultural, :publics]
  has_and_belongs_to_many :kinds

  def similars
    kinds = self.kinds.pluck(:id)
    proyects = Building.joins(:kinds).where('kinds.id' => kinds).where.not('buildings.id' => self.id).uniq
  end

end
