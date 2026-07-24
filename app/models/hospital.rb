class Hospital < ApplicationRecord
  has_many :doctors
  validates :name, :admin_email, presence: true
end
