class AddPhoneToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :phone, :integer
    add_column :patients, :email, :string
  end
end
