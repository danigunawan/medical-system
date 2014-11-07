class Changenipatient < ActiveRecord::Migration
  def change
    change_column :patients, :ni, :string
  end
end
