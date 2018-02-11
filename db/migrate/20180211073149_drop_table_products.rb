class DropTableProducts < ActiveRecord::Migration[5.1]
  def change
    drop_table :products do |t|
      t.timestamps
    end
  end
end
