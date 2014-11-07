class AddConfirmationToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :confirmed, :boolean
  end
end
