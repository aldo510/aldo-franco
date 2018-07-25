class Kind < ApplicationRecord

  has_and_belongs_to_many :buildings

  def self.all_by_kinds
    data = { 'all' => Building.all }
    kinds = self.all.pluck(:name)
    kinds.each do |kind|
      data[kind] = Kind.find_by(name: kind).buildings
    end
    data
  end

end
