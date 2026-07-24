class AddAdminEmailToHospitals < ActiveRecord::Migration[8.1]
  def change
    add_column :hospitals, :admin_email, :string
  end
end
