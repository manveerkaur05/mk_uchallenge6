class Customer < ApplicationRecord
  # Associations
  

  # Validations
  validates :full_name, presence: true
  validates :email_address, presence: true, uniqueness: true
  validates :phone_number, presence: true, format: { with: /\A\d{10}\z/, message: "must be a 10-digit number" }

  # Ransackable attributes
  def self.ransackable_attributes(auth_object = nil)
    ["full_name", "phone_number", "email_address", "notes", "profile_picture"]
  end

  # Ransackable associations
  def self.ransackable_associations(auth_object = nil)
    []
  end

  # Custom Methods
  def display_name
    "#{full_name} (#{email_address})"
  end
end
