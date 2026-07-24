class MakeHospitalAdminEmailToNull < ActiveRecord::Migration[8.1]
  def change
    change_column_null :hospitals, :admin_email, false
  end
end
