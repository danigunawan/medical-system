class AddHistoryToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :history_id, :integer
  end
end
