class AddLocationToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :location, :text
    add_column :patients, :last_checkup, :date
  end
end
