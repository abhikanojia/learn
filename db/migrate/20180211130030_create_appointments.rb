class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :physician, index: true

      t.timestamps
    end
  end
end
