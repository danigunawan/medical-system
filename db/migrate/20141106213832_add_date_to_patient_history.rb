class AddDateToPatientHistory < ActiveRecord::Migration
  def change
    add_column :patient_histories, :date, :date
  end
end
