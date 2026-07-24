class HospitalMailer < ApplicationMailer
  def details_updated(hospital, changes)
    @hospital = hospital
    @changes = changes
    
    mail(
      to: @hospital.admin_email,
      subject: "Hospital details updated"
    )
  end
end
