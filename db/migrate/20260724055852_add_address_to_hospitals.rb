class AddAddressToHospitals < ActiveRecord::Migration[8.1]
  def change
    add_column :hospitals, :address, :string
  end
end
