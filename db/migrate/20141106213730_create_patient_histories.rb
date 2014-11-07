class CreatePatientHistories < ActiveRecord::Migration
  def change
    create_table :patient_histories do |t|

      t.timestamps
    end
  end
end
