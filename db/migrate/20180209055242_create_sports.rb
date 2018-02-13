class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string :type
      t.string :act_primary
      t.belongs_to :user

      t.timestamps
    end
  end
end
