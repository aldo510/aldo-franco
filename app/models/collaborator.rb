class Collaborator < ApplicationRecord
  validates :name, :title, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  scope :ordered, -> { order(:position, :name) }
end
