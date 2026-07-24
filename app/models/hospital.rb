class Hospital < ApplicationRecord
  has_many :doctors
  validates :name, :admin_email, presence: true

  after_update :send_update_email

  private
  
  def send_update_email
    HospitalMailer.details_updated(self).deliver_now
  end
end
