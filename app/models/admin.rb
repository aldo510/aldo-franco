class Admin < ApplicationRecord
  has_secure_password

  before_validation :normalize_email

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validate :only_one_admin, on: :create

  private

  def normalize_email
    self.email = email.to_s.strip.downcase
  end

  def only_one_admin
    errors.add(:base, "Solo puede existir un administrador") if Admin.exists?
  end
end
