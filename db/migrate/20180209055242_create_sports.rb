class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string :type
      t.string :act_primary

      t.timestamps
    end
  end
end
