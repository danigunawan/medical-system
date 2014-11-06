class AddDobAndSecurityNumberToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :dob, :date
    add_column :patients, :ni, :integer
  end
end
