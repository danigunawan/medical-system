class AddStatusToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :status, :string
    add_column :patients, :on_site, :boolean
  end
end
