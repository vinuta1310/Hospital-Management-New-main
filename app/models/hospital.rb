class Hospital < ApplicationRecord
  has_many :doctors
  validates :name, :admin_email, presence: true

  after_update_commit :send_update_email

  private
  
  def send_update_email
    HospitalMailer.details_updated(self, saved_changes.except("updated_at")).deliver_now
  end
end
